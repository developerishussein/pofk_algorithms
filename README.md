## 🧠 POFK Algorithm

![Temporary Logo](https://github.com/POFKLabs/pofk_algorithm/blob/main/logo/logo.jpg)

> A comprehensive, fast, and extensible algorithms library for Dart. Includes classic and modern techniques for lists, sets, maps, strings, and graphs — built with clean APIs and strong generics.

---

- Actively maintained with ambitious roadmap (1,000+ algorithms planned)
- Type-safe generics across the library
- Readable code with clear documentation and tests

Environment: Dart SDK ≥ 3.7.2 (see `pubspec.yaml`).

---

## 📦 Install

Use in your Dart or Flutter project.

### Dart

```bash
dart pub add pofk_algorithm
```

### Flutter

```bash
flutter pub add pofk_algorithm
```

---

## 🚀 Quick start

```dart
import 'package:pofk_algorithm/pofk_algorithm.dart';
import 'package:pofk_algorithm/graph_algorithms/weighted_edge.dart';

void main() {
  // List: binary search and sorting
  final idx = binarySearch<int>([1, 3, 5, 7, 9], 7);
  final sorted = mergeSort<int>([5, 2, 4, 6, 1, 3]);

  // String: algorithms
  final isPal = isPalindrome('A man a plan a canal Panama');
  final lcp = longestCommonPrefix(['flower', 'flow', 'flight']);

  // Graph: Dijkstra over weighted edges
  final graph = <String, List<WeightedEdge<String>>>{
    'A': [WeightedEdge('A', 'B', 1), WeightedEdge('A', 'C', 4)],
    'B': [WeightedEdge('B', 'C', 2)],
    'C': [],
  };
  final dist = dijkstra(graph, 'A');

  print([idx, sorted, isPal, lcp, dist]);
}
```

For a full tour, see `example/pofk_algorithm_example.dart`.

---

## 🧩 Algorithms included

### List algorithms
- binary_search, linear_search
- merge_sort, quick_sort, bubble_sort, insertion_sort, selection_sort
- counting_sort (non-negative ints)
- reverse_list, find_max_min, find_duplicates, remove_duplicates
- kadanes_algorithm
- max_sum_subarray_of_size_k, min_sum, average_subarray, prefix_sum, two_sum_sorted
- rotate_array_right

### Set algorithms
- has_duplicates, has_two_sum, has_unique_window
- disjoint_set (Union-Find), find_intersection, set_difference, is_frequency_unique

### Map algorithms
- frequency_count, most_frequent_element, top_k_frequent
- group_by_key, first_non_repeated_element
- anagram_checker (generic list-based)
- two_sum (indices), lru_cache, length_of_longest_substring

### String algorithms
- reverse_string, palindrome_checker, anagram_checker
- brute_force_search, kmp_search, rabin_karp_search
- longest_common_prefix, longest_palindromic_substring
- edit_distance, string_compression, count_vowels_consonants

### Graph algorithms (new)
- bfs, dfs, topological_sort
- connected_components, cycle_detection (directed/undirected), bipartite_graph
- shortest_path (unweighted BFS), weighted_edge (utility)
- dijkstra, bellman_ford, floyd_warshall
- mst_kruskal, mst_prim
- kosaraju_scc, articulation_points, union_find (typedef)

Each function includes Dartdoc with usage and time/space complexity.

---

## 📚 Usage notes

- Import everything via `package:pofk_algorithm/pofk_algorithm.dart`.
- Sorting/searching functions use `T extends Comparable` where appropriate.
- Weighted graph utilities use `WeightedEdge<T>`.
- Algorithms are pure and side-effect free unless documented otherwise.

---

## 🧪 Running tests

```bash
dart test
```

All tests pass in the repository (see `test/`).

---

## 🤝 Contributing

Contributions are welcome!
- Add new algorithms or optimize existing ones
- Improve docs and examples
- Increase test coverage

Open a PR with a brief description and test cases.

---

## 🗺️ Roadmap (short-term)
- Expand graph algorithms (SPFA, Johnson, Edmonds-Karp, Dinic)
- Add tree/heap/DP/geometry modules
- Benchmarks and performance docs

---

## 📄 License

MIT. See `LICENSE`.
