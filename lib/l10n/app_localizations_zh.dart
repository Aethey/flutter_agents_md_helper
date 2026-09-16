// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Flutter Architect';

  @override
  String get subtitle => '先搭好 Flutter 架构，再开始写应用。';

  @override
  String get navMain => '主导航';

  @override
  String get newProject => '新建项目';

  @override
  String get review => '审查';

  @override
  String get github => '项目 GitHub';

  @override
  String get theme => '切换主题';

  @override
  String get language => '语言';

  @override
  String get archEyebrow => '当前架构';

  @override
  String get yourArchitecture => '你的架构';

  @override
  String get decisionsMade => '已做出的决定';

  @override
  String progress(int done, int total) {
    return '已完成 $done / $total 项决定';
  }

  @override
  String get options => '选项';

  @override
  String decisionIndex(int n, int total) {
    return '第 $n / $total 项决定';
  }

  @override
  String get back => '返回';

  @override
  String get skip => '跳过';

  @override
  String get continueLabel => '继续';

  @override
  String get selectSingle => '只能选一项。';

  @override
  String get selectMultiple => '可多选，再点一次取消。';

  @override
  String get reviewEyebrow => '最终确认';

  @override
  String get reviewTitle => '你的 Flutter 架构';

  @override
  String get reviewLead => '生成项目说明前，请先核对全部决定。';

  @override
  String get reviewCtaTitle => '按此架构写出 FLUTTER_ARCHITECTURE.md';

  @override
  String get reviewCtaLead => '把决定转换成给实现代理用的项目说明。';

  @override
  String get generate => '生成 FLUTTER_ARCHITECTURE.md';

  @override
  String get backDecisions => '返回决定';

  @override
  String get restart => '从头开始';

  @override
  String get copy => '复制';

  @override
  String get copied => '已复制';

  @override
  String get close => '关闭';

  @override
  String get undecided => '未决定';

  @override
  String get recommended => '推荐';

  @override
  String get preview => '预览';

  @override
  String get pros => '优点';

  @override
  String get cons => '取舍';

  @override
  String get when => '适合的情况';

  @override
  String get avoid => '应避免的情况';

  @override
  String get withLabel => '搭配良好';

  @override
  String get sources => '来源';

  @override
  String get whyRecommended => '推荐原因';

  @override
  String get whyShown => '为何展示该选项';

  @override
  String get docs => '官方文档';

  @override
  String docsAria(String name) {
    return '打开 $name 的官方页面';
  }

  @override
  String get edit => '编辑';

  @override
  String editNamed(String name) {
    return '编辑$name';
  }

  @override
  String get reviewPending => '这一项还没有选择。';

  @override
  String get exportTitle => 'FLUTTER_ARCHITECTURE.md';

  @override
  String get loading => '正在加载架构知识库…';

  @override
  String get loadError => '无法加载知识库。';

  @override
  String get retry => '重试';

  @override
  String get architectureTab => '架构';

  @override
  String get decisionTab => '决定';

  @override
  String get insightTab => '洞察';

  @override
  String get insightEmpty => '选择或聚焦一个选项以查看技术细节。';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageChinese => '简体中文';

  @override
  String get languageJapanese => '日本語';
}
