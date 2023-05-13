class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<List<int>> levelOrder(TreeNode? root) {
    final stack = root != null ? [root] : [];
    final res = <List<int>>[];
    while (!stack.isEmpty) {
      int length = stack.length;
      res.add([]);
      for (int i = 0; i < length; i++) {
        final node = stack.removeAt(0);
        res.last.add(node.val);
        if (node.left != null) stack.add(node.left!);
        if (node.right != null) stack.add(node.right!);
      }
    }
    return res;
  }
}
