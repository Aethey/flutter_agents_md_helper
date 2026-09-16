import 'package:flutter_agents_md_helper/features/wizard/data/knowledge_repository.dart';
import 'package:flutter_agents_md_helper/shared/models/technology.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/file_knowledge_loader.dart';

void main() {
  test('loads the index, flow, and only referenced technologies', () async {
    final bundle = await KnowledgeRepository(const FileKnowledgeLoader())
        .load();

    expect(bundle.index.version, isNotEmpty);
    expect(bundle.flow.decisions, isNotEmpty);
    expect(bundle.technologies, isNotEmpty);

    final referenced = {
      for (final decision in bundle.flow.decisions)
        for (final option in decision.options) option.technologyId,
    };
    expect(bundle.technologies.keys.toSet(), referenced);

    for (final technology in bundle.technologies.values) {
      expect(technology.copy.en.name, isNotEmpty);
      expect(technology.kind, isA<TechnologyKind>());
    }
  });
}
