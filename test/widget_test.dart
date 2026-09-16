import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agents_md_helper/app/app.dart';
import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/features/wizard/domain/wizard_providers.dart';
import 'package:flutter_agents_md_helper/l10n/app_localizations.dart';
import 'package:flutter_agents_md_helper/shared/models/knowledge_bundle.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'helpers/file_knowledge_loader.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late KnowledgeBundle bundle;

  setUpAll(() async {
    bundle = await KnowledgeRepository(const FileKnowledgeLoader()).load();
  });

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> pumpApp(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    tester.platformDispatcher.localeTestValue = const Locale('en');
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.platformDispatcher.clearLocaleTestValue);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          knowledgeBundleProvider.overrideWith((ref) => bundle),
          sessionStoreProvider.overrideWithValue(MemorySessionStore()),
        ],
        child: const FlutterArchitectApp(),
      ),
    );
    await tester.pump();
  }

  testWidgets('selecting an option enables continue and updates insight', (
    tester,
  ) async {
    await pumpApp(tester);

    expect(find.text('Where does this app need to run?'), findsOneWidget);

    await tester.tap(find.text('Web'));
    await tester.pump();

    expect(find.text('Continue'), findsOneWidget);
    expect(find.text('Official docs'), findsOneWidget);
  });

  testWidgets('hover previews insight without committing architecture', (
    tester,
  ) async {
    await pumpApp(tester);

    final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);
    addTearDown(gesture.removePointer);
    await gesture.addPointer(location: Offset.zero);
    await tester.pump();
    await gesture.moveTo(tester.getCenter(find.text('Web')));
    await tester.pump();

    expect(find.text('Preview'), findsOneWidget);
    expect(find.text('Undecided'), findsWidgets);
  });

  testWidgets(
    'continue commits and advances, back restores the previous decision',
    (tester) async {
      await pumpApp(tester);

      await tester.tap(find.text('Web'));
      await tester.pump();
      await tester.tap(find.text('Continue'));
      await tester.pump();

      expect(
        find.text('How large is this project likely to get?'),
        findsOneWidget,
      );
      expect(find.text('Web'), findsWidgets);

      await tester.tap(find.text('Back'));
      await tester.pump();
      expect(find.text('Where does this app need to run?'), findsOneWidget);
    },
  );

  testWidgets('review screen is reachable from the top nav', (tester) async {
    await pumpApp(tester);
    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    await tester.tap(find.byTooltip(l10n.review));
    await tester.pump();
    expect(find.text(l10n.reviewTitle), findsOneWidget);
  });

  testWidgets('continue commits architecture and skip does not', (
    tester,
  ) async {
    await pumpApp(tester);

    await tester.tap(find.text('Web'));
    await tester.pump();
    expect(find.text('Undecided'), findsWidgets);

    await tester.tap(find.text('Continue'));
    await tester.pump();
    expect(find.text('Web'), findsWidgets);
    expect(
      find.text('How large is this project likely to get?'),
      findsOneWidget,
    );

    await tester.tap(find.text('Skip'));
    await tester.pump();
    expect(find.text('Which engineering needs apply?'), findsOneWidget);
  });

  testWidgets('platform allows selecting more than one target', (tester) async {
    await pumpApp(tester);

    await tester.tap(find.text('Mobile').first);
    await tester.pump();
    await tester.tap(find.text('Web').first);
    await tester.pump();
    await tester.tap(find.text('Continue'));
    await tester.pump();

    expect(find.text('Mobile, Web'), findsOneWidget);
    expect(
      find.text('How large is this project likely to get?'),
      findsOneWidget,
    );
  });

  testWidgets('switching language updates chrome and knowledge copy', (
    tester,
  ) async {
    await pumpApp(tester);
    final l10n = await AppLocalizations.delegate.load(const Locale('en'));

    await tester.tap(find.byTooltip(l10n.language));
    await tester.pumpAndSettle();
    await tester.tap(find.text('简体中文'));
    await tester.pumpAndSettle();

    expect(find.text('这个应用需要运行在哪里？'), findsOneWidget);
    expect(find.text('继续'), findsOneWidget);
    expect(find.text('Recommended'), findsNothing);
  });
}
