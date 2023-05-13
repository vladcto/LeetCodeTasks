class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSubtree(TreeNode? root, TreeNode? subRoot) {
    if (root == null) return false;
    if (sameTree(root, subRoot)) return true;
    return isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot);
  }

  bool sameTree(TreeNode? root1, TreeNode? root2) {
    if (root1 == null && root2 == null) return true;
    return root1?.val == root2?.val &&
        sameTree(root1?.left, root2?.left) &&
        sameTree(root1?.right, root2?.right);
  }
}
