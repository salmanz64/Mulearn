void processList(List<int> nums, int Function(int) operation) {
  nums = nums.map(operation).toList();
  print("The List after operation is $nums");
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  processList(numbers, (int num) => num * num);
  processList(numbers, (int num) => num * num * num);
}
