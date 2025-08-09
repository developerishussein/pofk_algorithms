// Import the umbrella library to access all algorithms
import 'package:pofk_algorithm/pofk_algorithm.dart';
 import 'package:pofk_algorithm/graph_algorithms/weighted_edge.dart';

void main() {
  // =========================
  // List Algorithms
  // =========================
  final numbers = <int>[1, 3, 5, 7, 9, 11, 13];
  final index = binarySearch<int>(numbers, 7);
  print('Binary Search: 7 at index -> $index');

  final unsorted = <int>[4, 2, 5, 1, 3];
  bubbleSort(unsorted);
  print('Bubble Sort: $unsorted');

  final listForQuick = <int>[10, 7, 8, 9, 1, 5];
  quickSort<int>(listForQuick, 0, listForQuick.length - 1);
  print('Quick Sort: $listForQuick');

  final mergeSorted = mergeSort<int>([5, 2, 4, 6, 1, 3]);
  print('Merge Sort: $mergeSorted');

  final inserted = <int>[5, 2, 9, 1, 5, 6];
  insertionSort(inserted);
  print('Insertion Sort: $inserted');

  final selected = <int>[64, 25, 12, 22, 11];
  selectionSort(selected);
  print('Selection Sort: $selected');

  final counted = countingSort([4, 2, 2, 8, 3, 3, 1]);
  print('Counting Sort: $counted');

  final idx = linearSearch([10, 20, 30, 40], 30);
  print('Linear Search: 30 at index -> $idx');

  final toReverse = [1, 2, 3, 4];
  reverseList(toReverse);
  print('Reverse List: $toReverse');

  print('Find Max: ${findMax([3, 1, 4, 1, 5])}');
  print('Find Min: ${findMin([3, 1, 4, 1, 5])}');

  print('Find Duplicates: ${findDuplicates([1, 2, 2, 3, 3, 3])}');

  print(
    'Kadane\'s Max Subarray Sum: ${kadanesAlgorithm([-2.0, 1.0, -3.0, 4.0, -1.0, 2.0, 1.0, -5.0, 4.0])}',
  );

  print(
    'Max Sum (k=3): ${maxSumSubarrayOfSizeK([2.0, 1.0, 5.0, 1.0, 3.0, 2.0], 3)}',
  );
  print(
    'Min Sum (k=3): ${minSumSubarrayOfSizeK([4, 2, 1, 7, 8, 1, 2, 8, 1, 0], 3)}',
  );

  print(
    'Average of size k=5: ${averageOfSubarraysOfSizeK([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)}',
  );

  print(
    'Two Sum Sorted (target 10): ${twoSumSorted([1, 2, 3, 4, 6, 8, 11, 15], 10)}',
  );
  print('Remove Duplicates: ${removeDuplicates([1, 2, 2, 3, 3, 4])}');
  print('Rotate Right by 2: ${rotateArrayRight([1, 2, 3, 4, 5], 2)}');

  final prefix = computePrefixSum([2, 4, 1, 3, 6]);
  print('Prefix Sum: $prefix, range(1..3): ${rangeSum(prefix, 1, 3)}');

  // =========================
  // Set Algorithms
  // =========================
  print('Has Duplicates: ${hasDuplicates([1, 2, 3, 3])}');
  print('Intersection: ${findIntersection([1, 2, 3], [2, 3, 4])}');
  print('Set Difference: ${setDifference([1, 2, 3], [2, 4])}');
  print('Is Frequency Unique: ${isFrequencyUnique([1, 1, 2, 2, 3])}');
  print('Has Two Sum (target 9): ${hasTwoSum([2, 7, 11, 15], 9)}');
  print('Has Unique Window (k=3): ${hasUniqueWindow([1, 2, 3, 1, 4], 3)}');

  // =========================
  // Map Algorithms
  // =========================
  print('Frequency Count: ${frequencyCount(['a', 'b', 'a'])}');
  print(
    'Group By First Letter: ${groupByFirstLetter(['apple', 'banana', 'apricot'])}',
  );
  print('First Non-Repeated: ${firstNonRepeatedElement(['a', 'a', 'b', 'c'])}');
  print('Anagram (list): ${isAnagram<String>(['Listen'], ['Silent'])}');
  print('Two Sum (indices): ${twoSum<int>([2, 7, 11, 15], 9)}');
  final lru =
      LRUCache<String, int>(2)
        ..put('x', 1)
        ..put('y', 2)
        ..get('x')
        ..put('z', 3);
  lru.printCache();
  print('Most Frequent: ${mostFrequentElement([1, 2, 2, 3])}');
  print('Top K Frequent: ${topKFrequent([1, 1, 1, 2, 2, 3], 2)}');
  print('Length of Longest Substring: ${lengthOfLongestSubstring('abcabcbb')}');

  // =========================
  // String Algorithms
  // =========================
  print('Reverse String: ${reverseString('dart')}');
  print('Palindrome: ${isPalindrome('A man a plan a canal Panama')}');
  print('String Anagram: ${areAnagrams('listen', 'silent')}');
  print('Longest Palindromic Substring: ${longestPalindrome('babad')}');
  print('String Compression: ${compressString('aaabbc')}');
  print('Brute Force Search: ${bruteForceSearch('hello world', 'world')}');
  print('KMP Search: ${kmpSearch('abxabcabcaby', 'abcaby')}');
  print('Rabin-Karp Search: ${rabinKarpSearch('hello world', 'world')}');
  print(
    'Longest Common Prefix: ${longestCommonPrefix(['flower', 'flow', 'flight'])}',
  );
  print('Edit Distance: ${editDistance('horse', 'ros')}');
  print('Vowels/Consonants: ${countVowelsAndConsonants('Hello World!')}');

  // =========================
  // Graph Algorithms
  // =========================
  final gUnweighted = <String, List<String>>{
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': [],
    'E': ['F'],
    'F': [],
  };
  print('BFS: ${bfs(gUnweighted, 'A')}');
  print('DFS: ${dfs(gUnweighted, 'A')}');
  print(
    'Topological Sort (DAG): ${topologicalSort(<int, List<int>>{
      1: [2],
      2: [3],
      3: [4],
      4: [],
    })}',
  );
  print(
    'Connected Components: ${connectedComponents({
      'A': ['B'],
      'B': ['A'],
      'C': [],
    })}',
  );
  print(
    'Has Cycle Directed: ${hasCycleDirected(<int, List<int>>{
      1: [2],
      2: [3],
      3: [1],
    })}',
  );
  print(
    'Has Cycle Undirected: ${hasCycleUndirected({
      'A': ['B', 'C'],
      'B': ['A', 'C'],
      'C': ['A', 'B'],
    })}',
  );
  print(
    'Is Bipartite: ${isBipartite({
      1: [2, 4],
      2: [1, 3],
      3: [2, 4],
      4: [1, 3],
    })}',
  );
  print(
    'Shortest Path (unweighted): ${shortestPathUnweighted(gUnweighted, 'A', 'F')}',
  );

  final weighted = <String, List<WeightedEdge<String>>>{
    'A': [WeightedEdge('A', 'B', 1), WeightedEdge('A', 'C', 4)],
    'B': [WeightedEdge('B', 'C', 2), WeightedEdge('B', 'D', 5)],
    'C': [WeightedEdge('C', 'D', 1)],
    'D': [],
  };
  print('Dijkstra distances: ${dijkstra(weighted, 'A')}');

  final nodes = {'A', 'B', 'C', 'D'};
  final edges = <WeightedEdge<String>>[
    WeightedEdge('A', 'B', 1),
    WeightedEdge('B', 'C', 2),
    WeightedEdge('A', 'C', 4),
    WeightedEdge('C', 'D', 1),
  ];
  print('Bellman-Ford distances: ${bellmanFord(nodes, edges, 'A')}');
  print('Floyd-Warshall A->C: ${floydWarshall(nodes, edges)['A']!['C']}');

  final mstKruskal = kruskalMST(nodes, List.of(edges));
  print(
    'Kruskal MST edges: ${mstKruskal.map((e) => '(${e.source}-${e.target}:${e.weight})').toList()}',
  );
  print(
    'Prim MST weight: ${primMST(weighted).fold<num>(0, (s, e) => s + e.weight)}',
  );

  final sccs = kosarajuSCC(<int, List<int>>{
    1: [2],
    2: [3],
    3: [1, 4],
    4: [5],
    5: [6],
    6: [4],
  });
  print('Kosaraju SCC count: ${sccs.length}');
  print(
    'Articulation Points: ${articulationPoints(<int, List<int>>{
      1: [2],
      2: [1, 3, 4],
      3: [2],
      4: [2],
    })}',
  );
}
