import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../domain/decision_engine.dart';
import '../domain/wizard_navigation.dart';
import '../domain/wizard_providers.dart';
import 'widgets/architecture_panel.dart';
import 'widgets/decision_panel.dart';
import 'widgets/insight_panel.dart';
import 'widgets/wizard_top_nav.dart';

class WizardScreen extends ConsumerStatefulWidget {
  const WizardScreen({super.key});

  @override
  ConsumerState<WizardScreen> createState() => _WizardScreenState();
}

class _WizardScreenState extends ConsumerState<WizardScreen> {
  int _mobileIndex = 1;
  bool _insightOpen = false;

  @override
  Widget build(BuildContext context) {
    final architecture = ref.watch(wizardControllerProvider);
    final bundleAsync = ref.watch(knowledgeBundleProvider);
    ref.listen(knowledgeBundleProvider, (_, next) {
      next.whenData((bundle) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) {
            return;
          }
          unawaited(_prefetchNext(bundle));
        });
      });
    });
    return bundleAsync.when(
      skipLoadingOnReload: true,
      loading: () => const _StatusScaffold(child: _LoadingBody()),
      error: (error, _) => _StatusScaffold(child: _ErrorBody(error: error)),
      data: (bundle) {
        final ids = WizardNavigation(DecisionEngine(bundle))
            .requiredTechnologyIds(architecture);
        if (!bundle.hasTechnologies(ids)) {
          return const _StatusScaffold(child: _LoadingBody());
        }
        return _ReadyWizard(
          bundle: bundle,
          mobileIndex: _mobileIndex,
          insightOpen: _insightOpen,
          onMobileIndex: (index) => setState(() => _mobileIndex = index),
          onInsightOpen: (open) => setState(() => _insightOpen = open),
        );
      },
    );
  }

  Future<void> _prefetchNext(KnowledgeBundle bundle) async {
    final state = ref.read(wizardControllerProvider);
    final ids = WizardNavigation(DecisionEngine(bundle))
        .nextTechnologyIds(state);
    if (ids.isEmpty) {
      return;
    }
    try {
      await ref
          .read(knowledgeRepositoryProvider)
          .ensureTechnologies(bundle, ids);
    } on Object {
      // Prefetching is opportunistic. A real navigation retries and surfaces
      // the error through knowledgeBundleProvider.
    }
  }
}

class _ReadyWizard extends StatelessWidget {
  const _ReadyWizard({
    required this.bundle,
    required this.mobileIndex,
    required this.insightOpen,
    required this.onMobileIndex,
    required this.onInsightOpen,
  });

  final KnowledgeBundle bundle;
  final int mobileIndex;
  final bool insightOpen;
  final ValueChanged<int> onMobileIndex;
  final ValueChanged<bool> onInsightOpen;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final l10n = AppLocalizations.of(context);
    final tokens = context.tokens;
    late final Widget body;
    if (width >= 1100) {
      body = Row(
        children: [
          SizedBox(
            width: width * 0.23,
            child: ArchitecturePanel(bundle: bundle),
          ),
          Expanded(child: DecisionPanel(bundle: bundle)),
          SizedBox(
            width: width * 0.30,
            child: InsightPanel(bundle: bundle),
          ),
        ],
      );
    } else if (width >= 920) {
      body = Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 0.32,
                child: ArchitecturePanel(bundle: bundle),
              ),
              Expanded(
                child: DecisionPanel(
                  bundle: bundle,
                  onOpenInsight: () => onInsightOpen(true),
                ),
              ),
            ],
          ),
          if (insightOpen) ...[
            Positioned.fill(
              child: GestureDetector(
                onTap: () => onInsightOpen(false),
                child: ColoredBox(color: tokens.bg.withValues(alpha: 0.55)),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Material(
                color: tokens.surface,
                child: SizedBox(
                  width: width * 0.42,
                  child: InsightPanel(bundle: bundle),
                ),
              ),
            ),
          ],
        ],
      );
    } else {
      body = Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: mobileIndex,
              children: [
                ArchitecturePanel(bundle: bundle),
                DecisionPanel(bundle: bundle),
                InsightPanel(bundle: bundle),
              ],
            ),
          ),
          NavigationBar(
            selectedIndex: mobileIndex,
            onDestinationSelected: onMobileIndex,
            destinations: [
              NavigationDestination(
                icon: const Icon(Icons.account_tree_outlined),
                label: l10n.architectureTab,
              ),
              NavigationDestination(
                icon: const Icon(Icons.tune),
                label: l10n.decisionTab,
              ),
              NavigationDestination(
                icon: const Icon(Icons.info_outline),
                label: l10n.insightTab,
              ),
            ],
          ),
        ],
      );
    }
    return Scaffold(
      body: Column(
        children: [
          const WizardTopNav(reviewActive: false),
          Divider(height: 1, color: tokens.border),
          Expanded(child: body),
        ],
      ),
    );
  }
}

class _StatusScaffold extends StatelessWidget {
  const _StatusScaffold({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const WizardTopNav(reviewActive: false),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class _LoadingBody extends StatelessWidget {
  const _LoadingBody();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Center(child: Text(l10n.loading));
  }
}

class _ErrorBody extends ConsumerWidget {
  const _ErrorBody({required this.error});

  final Object error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(l10n.loadError),
          const SizedBox(height: 12),
          Text('$error', textAlign: TextAlign.center),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              ref.read(knowledgeRepositoryProvider).clearCache();
              ref.invalidate(knowledgeCatalogProvider);
              ref.invalidate(knowledgeBundleProvider);
            },
            child: Text(l10n.retry),
          ),
        ],
      ),
    );
  }
}
