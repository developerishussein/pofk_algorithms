## [0.0.30] - 2025-08-09

### Added

#### Graph Algorithms
- bfs
- dfs
- topological_sort
- connected_components
- cycle_detection (directed and undirected)
- bipartite_graph
- shortest_path (unweighted BFS)
- weighted_edge (utility)
- dijkstra
- bellman_ford
- floyd_warshall
- mst_kruskal
- mst_prim
- kosaraju_scc
- articulation_points
- union_find (typedef of `DisjointSet`)

### Changed
- Updated `example/pofk_algorithm_example.dart` to include clear, organized examples for all algorithms across list, set, map, string, and graph modules.

### Fixed
- Resolved compile issues in new graph algorithms (e.g., `shortest_path` reverse usage, generic consts in `dijkstra`/`mst_prim`).
- Corrected expectation in `min_sum` test to match implementation.

## [0.0.2] - 2025-07-24
- Initial release of Pofk_algorithm.
- Added binary search, linear search, and merge sort algorithms.

### Added

#### List Algorithms
- linear_search
- binary_search
- merge_sort
- bubble_sort
- insertion_sort
- selection_sort
- quick_sort
- counting_sort
- reverse_list
- find_max_min
- find_duplicates
- kadanes_algorithm
- max_sum_subarray_of_size_k
- min_sum
- average_subarray
- two_sum_sorted
- remove_duplicates
- rotate_array_right
- prefix_sum

#### Set Algorithms
- has_duplicates
- disjoint_set
- find_intersection
- set_difference
- is_frequency_unique
- has_two_sum
- has_unique_window

#### Map Algorithms
- frequency_count
- group_by_key
- first_non_repeated_element
- anagram_checker
- two_sum
- lru_cache
- most_frequent_element
- top_k_frequent
- length_of_longest_substring

#### String Algorithms
- reverse_string
- palindrome_checker
- anagram_checker
- longest_palindromic_substring
- string_compression
- brute_force_search
- kmp_search
- rabin_karp_search
- longest_common_prefix
- edit_distance
- count_vowels_consonants

---