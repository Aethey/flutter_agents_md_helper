import 'decision.dart';
import 'knowledge_index.dart';
import 'technology.dart';

class KnowledgeBundle {
  const KnowledgeBundle({
    required this.index,
    required this.flow,
    required this.technologies,
  });

  final KnowledgeIndex index;
  final DecisionFlow flow;
  final Map<String, Technology> technologies;

  Technology technologyById(String id) {
    final technology = technologies[id];
    if (technology == null) {
      throw StateError('Technology $id was not loaded');
    }
    return technology;
  }
}
