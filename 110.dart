import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    if (root == null) return true;
    var diff = (maxHeight(root.left) - maxHeight(root.right)).abs();
    return diff <= 1 && isBalanced(root.left) && isBalanced(root.right);
  }

  int maxHeight(TreeNode? root, [int height = 0]) {
    if (root == null) return height;
    return max(
      maxHeight(root.left, height + 1),
      maxHeight(root.right, height + 1),
    );
  }
}
