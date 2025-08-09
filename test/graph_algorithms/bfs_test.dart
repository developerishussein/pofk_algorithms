import 'package:test/test.dart';
import 'package:pofk_algorithm/graph_algorithms/bfs.dart';

void main() {
  test('BFS traversal order', () {
    final graph = <String, List<String>>{
      'A': ['B', 'C'],
      'B': ['D', 'E'],
      'C': ['F'],
      'D': [],
      'E': ['F'],
      'F': [],
    };
    expect(bfs(graph, 'A'), equals(['A', 'B', 'C', 'D', 'E', 'F']));
  });
}
