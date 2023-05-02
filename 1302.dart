class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int deepestLeavesSum(TreeNode? root) {
    int sum = 0;
    var stack = [root!];
    while (stack.isNotEmpty) {
      sum = 0;
      for (int i = stack.length; i > 0; i--) {
        var node = stack.removeAt(0);
        if (node.left != null) stack.add(node.left!);
        if (node.right != null) stack.add(node.right!);
        sum += node.val;
      }
    }
    return sum;
  }
}
