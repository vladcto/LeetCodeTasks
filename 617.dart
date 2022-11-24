class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? mergeTrees(TreeNode? root1, TreeNode? root2) {
    if (root1 == null && root2 == null) {
      return null;
    }
    if (root1 == null) {
      root1 = root2;
      root2 = null;
    }
    root1!.val = root1.val + (root2?.val ?? 0);
    root1.right = mergeTrees(root1.right, root2?.right);
    root1.left = mergeTrees(root1.left, root2?.left);
    return root1;
  }
}
