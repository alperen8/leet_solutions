class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> arguments) {}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  BigInt firstValue = getValue(l1);
  BigInt secondValue = getValue(l2);
  BigInt sum = firstValue + secondValue;
  String sumStr = sum.toString();

  List<String> sumDigitsAsStr = sumStr.split("");
  List<int> sumDigits = List.empty(growable: true);

  for (int i = 0; i < sumDigitsAsStr.length; i++) {
    sumDigits.add(int.parse(sumDigitsAsStr[i]));
  }
  ListNode sumNode = ListNode();
  ListNode currNode = ListNode();

  for (int i = 0; i < sumDigits.length; i++) {
    if (i == 0) {
      sumNode.val = sumDigits[i];
    } else {
      currNode = ListNode(sumDigits[i]);
      currNode.next = sumNode;
      sumNode = currNode;
    }
  }

  return sumNode;
}

BigInt getValue(ListNode? listNode) {
  List<int> numberList = List.empty(growable: true);

  while (listNode?.val != null) {
    numberList.add(listNode!.val);
    listNode = listNode.next;
  }
  String first = "";
  numberList = numberList.reversed.toList();
  for (int value in numberList) {
    first += value.toString();
  }
  BigInt value = BigInt.parse(first);
  return value;
}
