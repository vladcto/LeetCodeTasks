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

  int maxHeight(TreeNode? root) {
    if (root == null) return 0;
    return 1 +
        max(
          maxHeight(root.left),
          maxHeight(root.right),
        );
  }
}

extension TreeNodeExtension on TreeNode {
  bool sameAs(TreeNode? other) {
    return this.val == other?.val &&
        left?.val == other?.left?.val &&
        right?.val == other?.right?.val;
  }
}
