import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';

class RecordingKnowledgeLoader implements KnowledgeLoader {
  RecordingKnowledgeLoader(this._inner);

  final KnowledgeLoader _inner;
  final List<String> paths = [];

  @override
  Future<String> loadString(String assetPath) {
    paths.add(assetPath);
    return _inner.loadString(assetPath);
  }
}
