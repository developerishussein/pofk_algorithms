/// 🔍 Linear Search Algorithm
///
/// Searches for a target value inside a list using a simple linear traversal.
/// Returns the index of the element if found, otherwise returns -1.
int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    // 🧪 Checking each element
    if (list[i] == target) {
      return i;
    }
  }

  return -1; // ❌ Target not found
}
