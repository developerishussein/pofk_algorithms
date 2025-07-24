/// Returns the minimum sum of any subarray with size k using Sliding Window.
int minSumSubarrayOfSizeK(List<num> list, int k) {
  if (list.length < k) {
    throw Exception("List length is less than k.");
  }

  num windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += list[i];
  }

  num minSum = windowSum;

  for (int end = k; end < list.length; end++) {
    windowSum += list[end] - list[end - k];
    if (windowSum < minSum) {
      minSum = windowSum;
    }
  }

  return minSum.toInt();
}
