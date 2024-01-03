class ListNode(var `val`: Int) {
    var next: ListNode? = null
}

class Solution {
    fun addTwoNumbers(l1: ListNode?, l2: ListNode?): ListNode {
        val initialNode = ListNode(0)

        var curNode: ListNode? = null
        var nextNode = initialNode
        var node1 = l1
        var node2 = l2
        var remain = 0

        while (node1 != null || node2 != null || remain != 0) {
            curNode?.next = nextNode
            curNode = nextNode
            nextNode = ListNode(0)

            val value = (node1?.`val` ?: 0) + (node2?.`val` ?: 0) + remain
            remain = value / 10
            curNode.`val` = value % 10

            node1 = node1?.next
            node2 = node2?.next
        }

        return initialNode
    }
}