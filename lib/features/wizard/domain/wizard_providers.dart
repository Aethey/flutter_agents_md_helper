import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ProviderListenableSelect;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/models/architecture_selection.dart';
import '../../../shared/models/architecture_state.dart';
import '../../../shared/models/decision.dart';
import '../../../shared/models/knowledge_bundle.dart';
import '../data/asset_knowledge_loader.dart';
import '../data/knowledge_repository.dart';
import '../data/prefs_session_store.dart';
import 'decision_engine.dart';
import 'wizard_navigation.dart';

part 'wizard_providers.g.dart';

@Riverpod(keepAlive: true)
KnowledgeRepository knowledgeRepository(Ref ref) {
  return KnowledgeRepository(const AssetKnowledgeLoader());
}

@Riverpod(keepAlive: true)
SessionStore sessionStore(Ref ref) {
  return SharedPreferencesSessionStore();
}

@Riverpod(keepAlive: true)
Future<KnowledgeBundle> knowledgeCatalog(Ref ref) {
  return ref.watch(knowledgeRepositoryProvider).loadCatalog();
}

@Riverpod(keepAlive: true)
Future<KnowledgeBundle> knowledgeBundle(Ref ref) async {
  final loadScope = ref.watch(
    wizardControllerProvider.select(
      (state) =>
          (answers: state.answers, currentDecisionId: state.currentDecisionId),
    ),
  );
  final architecture = ArchitectureState(
    answers: loadScope.answers,
    currentDecisionId: loadScope.currentDecisionId,
  );
  final catalog = await ref.watch(knowledgeCatalogProvider.future);
  final ids = WizardNavigation(DecisionEngine(catalog))
      .requiredTechnologyIds(architecture);
  return ref.read(knowledgeRepositoryProvider).ensureTechnologies(catalog, ids);
}

@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() => ThemeMode.light;

  void toggle() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }

  void restore(ThemeMode mode) {
    state = mode;
  }
}

@Riverpod(keepAlive: true)
class LocaleController extends _$LocaleController {
  @override
  Locale build() =>
      supportedLocale(WidgetsBinding.instance.platformDispatcher.locale);

  void setLocale(Locale locale) {
    state = supportedLocale(locale);
  }
}

Locale supportedLocale(Locale locale) {
  return switch (locale.languageCode) {
    'zh' => const Locale('zh'),
    'ja' => const Locale('ja'),
    _ => const Locale('en'),
  };
}

@Riverpod(keepAlive: true)
class WizardController extends _$WizardController {
  @override
  ArchitectureState build() {
    unawaited(_restore());
    return const ArchitectureState();
  }

  DecisionEngine _engine(KnowledgeBundle bundle) => DecisionEngine(bundle);

  WizardNavigation _nav(KnowledgeBundle bundle) =>
      WizardNavigation(_engine(bundle));

  void preview(String optionId) {
    state = state.copyWith(previewedOptionId: optionId);
  }

  void restorePreview() {
    state = state.copyWith(
      previewedOptionId:
          state.selectedOptionId ?? state.selectedOptionIds.firstOrNull,
    );
  }

  void select(KnowledgeBundle bundle, String optionId) {
    final decision = _nav(bundle).currentDecision(state);
    state = _nav(bundle).select(state, decision, optionId);
  }

  bool continueEnabled(KnowledgeBundle bundle) {
    final decision = _nav(bundle).currentDecision(state);
    if (decision.selection == SelectionMode.multiple) {
      return state.selectedOptionIds.isNotEmpty;
    }
    return state.selectedOptionId != null;
  }

  bool commitAndContinue(KnowledgeBundle bundle) {
    final decision = _nav(bundle).currentDecision(state);
    final selection = decision.selection == SelectionMode.multiple
        ? ArchitectureSelection.multiple(state.selectedOptionIds)
        : ArchitectureSelection.single(state.selectedOptionId!);
    final result = _nav(bundle).commit(state, selection);
    state = result.state;
    unawaited(persist());
    return result.openReview;
  }

  bool skip(KnowledgeBundle bundle) {
    final result = _nav(bundle).skip(state);
    state = result.state;
    unawaited(persist());
    return result.openReview;
  }

  void back(KnowledgeBundle bundle) {
    state = _nav(bundle).back(state);
    unawaited(persist());
  }

  void jumpTo(KnowledgeBundle bundle, String decisionId) {
    state = _nav(bundle).jumpTo(state, decisionId);
    unawaited(persist());
  }

  void reset() {
    state = const ArchitectureState();
    unawaited(persist());
  }

  Future<void> persist() => _persist(state);

  Future<void> _restore() async {
    final saved = await ref.read(sessionStoreProvider).load();
    if (saved == null) {
      return;
    }
    state = ArchitectureState(
      answers: saved.answers,
      currentDecisionId: saved.currentDecisionId,
    );
    ref
        .read(localeControllerProvider.notifier)
        .setLocale(Locale(saved.languageCode));
    ref
        .read(themeModeControllerProvider.notifier)
        .restore(saved.isDark ? ThemeMode.dark : ThemeMode.light);
  }

  Future<void> _persist(ArchitectureState next) async {
    final locale = ref.read(localeControllerProvider);
    final theme = ref.read(themeModeControllerProvider);
    await ref
        .read(sessionStoreProvider)
        .save(
          PersistedSession(
            answers: next.answers,
            currentDecisionId: next.currentDecisionId,
            languageCode: locale.languageCode,
            isDark: theme != ThemeMode.light,
          ),
        );
  }
}
