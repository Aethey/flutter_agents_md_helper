import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('zh'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Architect'**
  String get appTitle;

  /// No description provided for @subtitle.
  ///
  /// In en, this message translates to:
  /// **'Build your Flutter architecture before you build your app.'**
  String get subtitle;

  /// No description provided for @navMain.
  ///
  /// In en, this message translates to:
  /// **'Main'**
  String get navMain;

  /// No description provided for @newProject.
  ///
  /// In en, this message translates to:
  /// **'New project'**
  String get newProject;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'Project GitHub'**
  String get github;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Toggle theme'**
  String get theme;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @archEyebrow.
  ///
  /// In en, this message translates to:
  /// **'Selected architecture'**
  String get archEyebrow;

  /// No description provided for @yourArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Your architecture'**
  String get yourArchitecture;

  /// No description provided for @decisionsMade.
  ///
  /// In en, this message translates to:
  /// **'Decisions you have made'**
  String get decisionsMade;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} decisions completed'**
  String progress(int done, int total);

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// No description provided for @decisionIndex.
  ///
  /// In en, this message translates to:
  /// **'Decision {n} of {total}'**
  String decisionIndex(int n, int total);

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @continueLabel.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// No description provided for @selectSingle.
  ///
  /// In en, this message translates to:
  /// **'Choose one.'**
  String get selectSingle;

  /// No description provided for @selectMultiple.
  ///
  /// In en, this message translates to:
  /// **'Choose one or more. Click again to remove.'**
  String get selectMultiple;

  /// No description provided for @reviewEyebrow.
  ///
  /// In en, this message translates to:
  /// **'Final review'**
  String get reviewEyebrow;

  /// No description provided for @reviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Flutter architecture'**
  String get reviewTitle;

  /// No description provided for @reviewLead.
  ///
  /// In en, this message translates to:
  /// **'Review your decisions before generating project instructions.'**
  String get reviewLead;

  /// No description provided for @reviewCtaTitle.
  ///
  /// In en, this message translates to:
  /// **'Write FLUTTER_ARCHITECTURE.md from this architecture'**
  String get reviewCtaTitle;

  /// No description provided for @reviewCtaLead.
  ///
  /// In en, this message translates to:
  /// **'Convert the decisions into project instructions for an implementation agent.'**
  String get reviewCtaLead;

  /// No description provided for @generate.
  ///
  /// In en, this message translates to:
  /// **'Generate FLUTTER_ARCHITECTURE.md'**
  String get generate;

  /// No description provided for @backDecisions.
  ///
  /// In en, this message translates to:
  /// **'Back to decisions'**
  String get backDecisions;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Start over'**
  String get restart;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @undecided.
  ///
  /// In en, this message translates to:
  /// **'Undecided'**
  String get undecided;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @pros.
  ///
  /// In en, this message translates to:
  /// **'Advantages'**
  String get pros;

  /// No description provided for @cons.
  ///
  /// In en, this message translates to:
  /// **'Trade-offs'**
  String get cons;

  /// No description provided for @when.
  ///
  /// In en, this message translates to:
  /// **'Recommended when'**
  String get when;

  /// No description provided for @avoid.
  ///
  /// In en, this message translates to:
  /// **'Avoid when'**
  String get avoid;

  /// No description provided for @withLabel.
  ///
  /// In en, this message translates to:
  /// **'Works well with'**
  String get withLabel;

  /// No description provided for @sources.
  ///
  /// In en, this message translates to:
  /// **'Sources'**
  String get sources;

  /// No description provided for @whyRecommended.
  ///
  /// In en, this message translates to:
  /// **'Why this is recommended'**
  String get whyRecommended;

  /// No description provided for @whyShown.
  ///
  /// In en, this message translates to:
  /// **'Why this option is shown'**
  String get whyShown;

  /// No description provided for @docs.
  ///
  /// In en, this message translates to:
  /// **'Official docs'**
  String get docs;

  /// No description provided for @docsAria.
  ///
  /// In en, this message translates to:
  /// **'Open the official {name} page'**
  String docsAria(String name);

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editNamed.
  ///
  /// In en, this message translates to:
  /// **'Edit {name}'**
  String editNamed(String name);

  /// No description provided for @reviewPending.
  ///
  /// In en, this message translates to:
  /// **'This item has not been chosen yet.'**
  String get reviewPending;

  /// No description provided for @exportTitle.
  ///
  /// In en, this message translates to:
  /// **'FLUTTER_ARCHITECTURE.md'**
  String get exportTitle;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading architecture knowledge…'**
  String get loading;

  /// No description provided for @loadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load the knowledge base.'**
  String get loadError;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @architectureTab.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get architectureTab;

  /// No description provided for @decisionTab.
  ///
  /// In en, this message translates to:
  /// **'Decision'**
  String get decisionTab;

  /// No description provided for @insightTab.
  ///
  /// In en, this message translates to:
  /// **'Insight'**
  String get insightTab;

  /// No description provided for @insightEmpty.
  ///
  /// In en, this message translates to:
  /// **'Select or focus an option to see technology details.'**
  String get insightEmpty;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageChinese.
  ///
  /// In en, this message translates to:
  /// **'简体中文'**
  String get languageChinese;

  /// No description provided for @languageJapanese.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get languageJapanese;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ja':
      return AppLocalizationsJa();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
