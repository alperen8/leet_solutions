void main(List<String> arguments) {
  mergeTwoLists(ListNode(5, ListNode(6, ListNode(7))),
      ListNode(1, ListNode(2, ListNode(3))));
  // mergeTwoLists(null, null);
}

ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  List<int> firstList = List.empty(growable: true);
  List<int> secondList = List.empty(growable: true);
  ListNode tempNode = ListNode();
  if (list1 == null && list2 == null) {
    return null;
  }
  if (list1 != null) {
    tempNode = list1;
    firstList.add(tempNode.val);
    while (tempNode.next != null) {
      tempNode = tempNode.next!;
      firstList.add(tempNode.val);
    }
  }
  if (list2 != null) {
    tempNode = list2;
    secondList.add(tempNode.val);
    while (tempNode.next != null) {
      tempNode = tempNode.next!;
      secondList.add(tempNode.val);
    }
  }
  //firstList holds all values to avoid creating new list
  firstList += [...secondList];
  firstList.sort((a, b) => a.compareTo(b));

  //using list1 again to avoid creating new list
  list1 = ListNode();

  //create new node
  for (int i = (firstList.length - 1); i >= 0; i--) {
    if (i == (firstList.length - 1)) {
      list1!.val = firstList[i];
    } else {
      tempNode = ListNode(firstList[i]);
      tempNode.next = list1;
      list1 = tempNode;
    }
  }
  return list1;
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  //we must override this to be able to test
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListNode && other.val == val;
  }

  @override
  int get hashCode => val.hashCode;
}
