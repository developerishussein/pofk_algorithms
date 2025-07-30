import 'package:pofk_algorithm/list_algorithms/binary_search.dart';

void main() {
  List<int> sortedNumbers = [1, 3, 5, 7, 9, 11, 13];
  int target = 777;

  int index = binarySearch<int>(sortedNumbers, target);

  if (index != -1) {
    print('🔍 Found $target at index $index');
  } else {
    print('❌ $target not found in the list');
  }

  //Strings:
  List<String> sortedWords = ['apple', 'banana', 'cherry', 'date'];
  int stringIndex = binarySearch<String>(sortedWords, 'cherry');

  print(stringIndex != -1 ? '🍒 Found at index $stringIndex' : '❌ Not found');
}
