import 'package:leet_solutions/q21.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("  ALL NULL TEST", () {
    ListNode? node = mergeTwoLists(null, null);
    expect(node, null);
  });
  test("  ONE NULL TEST", () {
    ListNode? node = mergeTwoLists(ListNode(1, ListNode(2)), null);
    expect(node, ListNode(1, ListNode(2)));
  });
  test("  FULL VALUES TEST", () {
    ListNode? node = mergeTwoLists(ListNode(5, ListNode(6, ListNode(7))),
        ListNode(1, ListNode(2, ListNode(3))));

    ListNode expectedNode = ListNode(
        1, ListNode(2, ListNode(3, ListNode(5, ListNode(6, ListNode(7))))));

    expect(node, expectedNode);
  });

  test("  RANDOM VALUES TEST", () {
    ListNode? node = mergeTwoLists(ListNode(3, ListNode(8, ListNode(100))),
        ListNode(2, ListNode(1000, ListNode(3000))));

    ListNode expectedNode = ListNode(
        2,
        ListNode(
            3, ListNode(8, ListNode(100, ListNode(1000, ListNode(3000))))));

    expect(node, expectedNode);
  });
  test("  ALL SAME VALUES TEST", () {
    ListNode? node = mergeTwoLists(ListNode(0, ListNode(0, ListNode(0))),
        ListNode(0, ListNode(0, ListNode(0))));

    ListNode expectedNode = ListNode(
        0, ListNode(0, ListNode(0, ListNode(0, ListNode(0, ListNode(0))))));

    expect(node, expectedNode);
  });
  test("  DIFFERENT LENGHT WITH SAME VALUES TEST", () {
    ListNode? node = mergeTwoLists(
        ListNode(0, ListNode(0, ListNode(0, ListNode(0)))),
        ListNode(0, ListNode(0, ListNode(0))));

    ListNode expectedNode = ListNode(
        0,
        ListNode(0,
            ListNode(0, ListNode(0, ListNode(0, ListNode(0, ListNode(0)))))));

    expect(node, expectedNode);
  });
  test("  DIFFERENT LENGHT WITH DIFFERENT SAME VALUES TEST", () {
    ListNode? node = mergeTwoLists(
        ListNode(0, ListNode(0, ListNode(0, ListNode(0)))),
        ListNode(1, ListNode(1, ListNode(1))));

    ListNode expectedNode = ListNode(
        0,
        ListNode(0,
            ListNode(0, ListNode(0, ListNode(1, ListNode(1, ListNode(1)))))));

    expect(node, expectedNode);
  });
}
