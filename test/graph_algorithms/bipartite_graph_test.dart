import 'package:test/test.dart';
import 'package:pofk_algorithm/graph_algorithms/bipartite_graph.dart';

void main() {
  test('Bipartite graph check', () {
    final square = <int, List<int>>{
      1: [2, 4],
      2: [1, 3],
      3: [2, 4],
      4: [1, 3],
    };
    final triangle = <int, List<int>>{
      1: [2, 3],
      2: [1, 3],
      3: [1, 2],
    };
    expect(isBipartite(square), isTrue);
    expect(isBipartite(triangle), isFalse);
  });
}
