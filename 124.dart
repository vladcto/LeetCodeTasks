import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxAns = 0;

  int maxPathSum(TreeNode? root) {
    maxAns = root!.val;
    maxSumSubtree(root);
    return maxAns;
  }

  int maxSumSubtree(TreeNode? root) {
    if (root == null) return 0;
    int lSum = maxSumSubtree(root.left);
    int rSum = maxSumSubtree(root.right);
    int curPath = max(root.val, max(lSum, rSum) + root.val);
    maxAns = max(maxAns, max(curPath, lSum + rSum + root.val));
    return curPath;
  }
}
