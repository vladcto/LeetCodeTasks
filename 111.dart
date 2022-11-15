import 'dart:math' show min;

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int minDepth(TreeNode? root, [bool checkEmptyRoot = true]) {
    if (root == null) return checkEmptyRoot ? 0 : 10001;
    if (root.left == null && root.right == null) return 0;
    return 1 + min(minDepth(root.left, false), minDepth(root.right, false));
  }
}
