/// 🔍 Returns the maximum sum of any contiguous subarray of size [k]
/// using the Sliding Window technique.
///
/// Example:
/// ```dart
/// maxSumSubarrayOfSizeK([2.0, 1.0, 5.0, 1.0, 3.0, 2.0], 3); // returns 9.0
/// ```
///
/// Time Complexity: O(n)
/// Space Complexity: O(1)
double maxSumSubarrayOfSizeK(List<double> list, int k) {
  if (list.length < k) {
    throw ArgumentError("Input list is shorter than k = $k");
  }

  double windowSum = 0.0;

  // Compute the sum of the first window
  for (int i = 0; i < k; i++) {
    windowSum += list[i];
  }

  double maxSum = windowSum;

  // Slide the window through the array
  for (int end = k; end < list.length; end++) {
    windowSum += list[end] - list[end - k];
    if (windowSum > maxSum) {
      maxSum = windowSum;
    }
  }

  return maxSum;
}
