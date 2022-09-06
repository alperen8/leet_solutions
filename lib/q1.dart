void main(List<String> arguments) {}
List<int> twoSum(List<int> nums, int target) {
  List<int> solutionArray = List.empty(growable: true);
  bool found = false;
  int firstIndex = 0;
  int secondIndex = 0;
  nums.forEach((element) {
    nums.forEach((secondElement) {
      if (element + secondElement == target &&
          !found &&
          firstIndex != secondIndex) {
        solutionArray.add(firstIndex);
        solutionArray.add(secondIndex);
        found = true;
      }
      secondIndex++;
    });
    firstIndex++;
    secondIndex = 0;
  });
  return solutionArray;
}
