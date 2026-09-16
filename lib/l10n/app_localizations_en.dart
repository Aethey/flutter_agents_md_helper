// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Architect';

  @override
  String get subtitle =>
      'Build your Flutter architecture before you build your app.';

  @override
  String get navMain => 'Main';

  @override
  String get newProject => 'New project';

  @override
  String get review => 'Review';

  @override
  String get github => 'Project GitHub';

  @override
  String get theme => 'Toggle theme';

  @override
  String get language => 'Language';

  @override
  String get archEyebrow => 'Selected architecture';

  @override
  String get yourArchitecture => 'Your architecture';

  @override
  String get decisionsMade => 'Decisions you have made';

  @override
  String progress(int done, int total) {
    return '$done of $total decisions completed';
  }

  @override
  String get options => 'Options';

  @override
  String decisionIndex(int n, int total) {
    return 'Decision $n of $total';
  }

  @override
  String get back => 'Back';

  @override
  String get skip => 'Skip';

  @override
  String get continueLabel => 'Continue';

  @override
  String get selectSingle => 'Choose one.';

  @override
  String get selectMultiple => 'Choose one or more. Click again to remove.';

  @override
  String get reviewEyebrow => 'Final review';

  @override
  String get reviewTitle => 'Your Flutter architecture';

  @override
  String get reviewLead =>
      'Review your decisions before generating project instructions.';

  @override
  String get reviewCtaTitle =>
      'Write FLUTTER_ARCHITECTURE.md from this architecture';

  @override
  String get reviewCtaLead =>
      'Convert the decisions into project instructions for an implementation agent.';

  @override
  String get generate => 'Generate FLUTTER_ARCHITECTURE.md';

  @override
  String get backDecisions => 'Back to decisions';

  @override
  String get restart => 'Start over';

  @override
  String get copy => 'Copy';

  @override
  String get copied => 'Copied';

  @override
  String get close => 'Close';

  @override
  String get undecided => 'Undecided';

  @override
  String get recommended => 'Recommended';

  @override
  String get preview => 'Preview';

  @override
  String get pros => 'Advantages';

  @override
  String get cons => 'Trade-offs';

  @override
  String get when => 'Recommended when';

  @override
  String get avoid => 'Avoid when';

  @override
  String get withLabel => 'Works well with';

  @override
  String get sources => 'Sources';

  @override
  String get whyRecommended => 'Why this is recommended';

  @override
  String get whyShown => 'Why this option is shown';

  @override
  String get docs => 'Official docs';

  @override
  String docsAria(String name) {
    return 'Open the official $name page';
  }

  @override
  String get edit => 'Edit';

  @override
  String editNamed(String name) {
    return 'Edit $name';
  }

  @override
  String get reviewPending => 'This item has not been chosen yet.';

  @override
  String get exportTitle => 'FLUTTER_ARCHITECTURE.md';

  @override
  String get loading => 'Loading architecture knowledge…';

  @override
  String get loadError => 'Could not load the knowledge base.';

  @override
  String get retry => 'Retry';

  @override
  String get architectureTab => 'Architecture';

  @override
  String get decisionTab => 'Decision';

  @override
  String get insightTab => 'Insight';

  @override
  String get insightEmpty =>
      'Select or focus an option to see technology details.';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageChinese => '简体中文';

  @override
  String get languageJapanese => '日本語';
}
