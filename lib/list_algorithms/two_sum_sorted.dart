// Generic function to find a pair in a sorted list that sums to a target value
List<T>? twoSumSorted<T extends num>(List<T> list, T target) {
  int start = 0;
  int end = list.length - 1;

  print("🔍 Searching for a pair summing to $target in list: $list");

  while (start < end) {
    T left = list[start];
    T right = list[end];
    num sum = left + right;

    print("📌 Trying: $left + $right = $sum");

    if (sum == target) {
      print("✅ Found pair: $left + $right = $target");
      return [left, right];
    } else if (sum < target) {
      start++;
    } else {
      end--;
    }
  }

  print("❌ No matching pair found.");
  return null;
}
