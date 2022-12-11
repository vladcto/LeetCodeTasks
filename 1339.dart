import 'dart:math';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int nowRes = 0;

  int maxProduct(TreeNode? root) {
    int sums = treeSum(root!);
    dfs(root, sums);
    return nowRes.toInt() % (1000000000 + 7);
  }

  int dfs(TreeNode? root, int sumTree) {
    if (root == null) return 0;
    var lDfs = dfs(root.left, sumTree);
    var rDfs = dfs(root.right, sumTree);
    int nowSum = root.val + lDfs + rDfs;
    nowRes = max(nowRes, nowSum * (sumTree - nowSum));
    return nowSum;
  }

  //StackOverflow exception
  int treeSum(TreeNode? root) {
    if (root == null) return 0;
    return root.val + treeSum(root.left) + treeSum(root.right);
  }
}
