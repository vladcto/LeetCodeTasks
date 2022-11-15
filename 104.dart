import 'dart:math' show max;

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;
    if (root.left == null && root.right == null) return 1;
    return 1 + max(maxDepth(root.left), maxDepth(root.right));
  }
}
