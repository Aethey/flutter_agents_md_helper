// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Flutter Architect';

  @override
  String get subtitle => 'アプリを書く前に、アーキテクチャを組み立てる。';

  @override
  String get navMain => 'メイン';

  @override
  String get newProject => '新規プロジェクト';

  @override
  String get review => 'レビュー';

  @override
  String get github => 'プロジェクトの GitHub';

  @override
  String get theme => 'テーマを切り替える';

  @override
  String get language => '言語';

  @override
  String get archEyebrow => '選択中の構成';

  @override
  String get yourArchitecture => 'あなたのアーキテクチャ';

  @override
  String get decisionsMade => 'ここまでの決定';

  @override
  String progress(int done, int total) {
    return '$done / $total 件の決定が完了';
  }

  @override
  String get options => '選択肢';

  @override
  String decisionIndex(int n, int total) {
    return '決定 $n / $total';
  }

  @override
  String get back => '戻る';

  @override
  String get skip => 'スキップ';

  @override
  String get continueLabel => '続ける';

  @override
  String get selectSingle => '1つだけ選べます。';

  @override
  String get selectMultiple => '複数選べます。もう一度押すと外れます。';

  @override
  String get reviewEyebrow => '最終確認';

  @override
  String get reviewTitle => 'あなたの Flutter アーキテクチャ';

  @override
  String get reviewLead => 'プロジェクト指示を生成する前に、決定内容を確認してください。';

  @override
  String get reviewCtaTitle => 'この構成で FLUTTER_ARCHITECTURE.md を書き出します';

  @override
  String get reviewCtaLead => '決定内容を、実装エージェント向けのプロジェクト指示に変換します。';

  @override
  String get generate => 'FLUTTER_ARCHITECTURE.md を生成';

  @override
  String get backDecisions => '決定に戻る';

  @override
  String get restart => '最初からやり直す';

  @override
  String get copy => 'コピー';

  @override
  String get copied => 'コピーしました';

  @override
  String get close => '閉じる';

  @override
  String get undecided => '未決定';

  @override
  String get recommended => '推奨';

  @override
  String get preview => 'プレビュー';

  @override
  String get pros => '利点';

  @override
  String get cons => 'トレードオフ';

  @override
  String get when => '向いている場合';

  @override
  String get avoid => '避けた方がよい場合';

  @override
  String get withLabel => '相性のよい組み合わせ';

  @override
  String get sources => '出典';

  @override
  String get whyRecommended => '推奨する理由';

  @override
  String get whyShown => 'この選択肢を出す理由';

  @override
  String get docs => '公式ドキュメント';

  @override
  String docsAria(String name) {
    return '$nameの公式ページを開く';
  }

  @override
  String get edit => '編集';

  @override
  String editNamed(String name) {
    return '$nameを編集';
  }

  @override
  String get reviewPending => 'この項目はまだ選ばれていません。';

  @override
  String get exportTitle => 'FLUTTER_ARCHITECTURE.md';

  @override
  String get loading => 'アーキテクチャ知識を読み込み中…';

  @override
  String get loadError => '知識ベースを読み込めませんでした。';

  @override
  String get retry => '再試行';

  @override
  String get architectureTab => '構成';

  @override
  String get decisionTab => '決定';

  @override
  String get insightTab => '洞察';

  @override
  String get insightEmpty => '選択肢を選ぶかフォーカスすると、技術の詳細が表示されます。';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageChinese => '简体中文';

  @override
  String get languageJapanese => '日本語';
}
