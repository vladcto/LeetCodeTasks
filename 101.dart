class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    return isEqualTrees(root?.right, root?.left);
  }

  bool isEqualTrees(TreeNode? right, TreeNode? left) {
    if (right == null || left == null) return right == left;
    if (right.val == left.val)
      return isEqualTrees(right.right, left.left) &&
          isEqualTrees(right.left, left.right);
    return false;
  }
}
