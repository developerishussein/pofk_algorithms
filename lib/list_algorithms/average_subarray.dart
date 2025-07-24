List<double> averageOfSubarraysOfSizeK(List<num> list, int k) {
  if (list.length < k) {
    throw Exception("❌ Cannot calculate averages. The list is shorter than k.");
  }

  List<double> averages = [];
  num windowSum = 0;

  for (int i = 0; i < k; i++) {
    windowSum += list[i];
  }

  averages.add(windowSum / k);

  for (int end = k; end < list.length; end++) {
    windowSum += list[end] - list[end - k];
    averages.add(windowSum / k);
  }

  return averages;
}
