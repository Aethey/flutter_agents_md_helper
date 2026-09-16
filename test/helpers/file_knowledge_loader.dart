import 'dart:io';

import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';

class FileKnowledgeLoader implements KnowledgeLoader {
  const FileKnowledgeLoader();

  @override
  Future<String> loadString(String assetPath) {
    return File(assetPath).readAsString();
  }
}
