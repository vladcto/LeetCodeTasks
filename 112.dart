class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;
    if (root.left == null && root.right == null)
      return root.val - targetSum == 0;
    return hasPathSum(root.left, targetSum - root.val) ||
        hasPathSum(root.right, targetSum - root.val);
  }
}
