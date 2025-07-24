/// 📈 Returns the maximum sum of a contiguous subarray using Kadane's Algorithm.
///
/// The function finds the subarray (with at least one element) that has the largest sum.
///
/// Example:
/// ```dart
/// kadanesAlgorithm([-2.0, 1.0, -3.0, 4.0, -1.0, 2.0, 1.0, -5.0, 4.0]); // returns 6.0
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
double kadanesAlgorithm(List<double> list) {
  if (list.isEmpty) {
    throw ArgumentError("Input list cannot be empty.");
  }

  double maxSoFar = list[0];
  double currentMax = list[0];

  for (int i = 1; i < list.length; i++) {
    currentMax = list[i] > (currentMax + list[i]) ? list[i] : currentMax + list[i];
    maxSoFar = currentMax > maxSoFar ? currentMax : maxSoFar;
  }

  return maxSoFar;
}
