class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    return isSymmetricTrees(root?.right, root?.left);
  }

  bool isSymmetricTrees(TreeNode? t1, TreeNode? l2) {
    if (t1 == null || l2 == null) return t1 == l2;
    if (t1.val == l2.val)
      return isSymmetricTrees(t1.right, l2.left) &&
          isSymmetricTrees(t1.left, l2.right);
    return false;
  }
}
