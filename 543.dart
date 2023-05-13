import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int diameterOfBinaryTree(TreeNode? root) {
    if (root == null) return 0;
    return [
      maxDepth(root.left) + maxDepth(root.right),
      diameterOfBinaryTree(root.left),
      diameterOfBinaryTree(root.right),
    ].reduce(max);
  }

  int maxDepth(TreeNode? root) {
    if (root == null) return 0;
    return 1 + max(maxDepth(root.left), maxDepth(root.right));
  }
}
