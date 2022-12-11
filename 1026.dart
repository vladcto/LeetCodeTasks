import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxAncestorDiff(TreeNode? root, [int minVal = 1000000, int maxVal = -1]) {
    if (root == null) return (maxVal - minVal);
    maxVal = max(root.val, maxVal);
    minVal = min(minVal, root.val);
    return max(maxAncestorDiff(root.left, minVal, maxVal),
        maxAncestorDiff(root.right, minVal, maxVal));
  }
}
