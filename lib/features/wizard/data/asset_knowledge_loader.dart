import 'package:flutter/services.dart';

import 'knowledge_repository.dart';

class AssetKnowledgeLoader implements KnowledgeLoader {
  const AssetKnowledgeLoader();

  @override
  Future<String> loadString(String assetPath) {
    return rootBundle.loadString(assetPath);
  }
}
