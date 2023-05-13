class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int kthSmallest(TreeNode? root, int k) {
    return findKSmallest(root!, k);
  }

  int findKSmallest(TreeNode root, int k) {
    if (k == 0) return root.val;
    int nextK = k - countLeaves(root.left) - 1;
    if (nextK == 0) return root.val;
    return nextK > 0
        ? findKSmallest(root.right!, nextK)
        : findKSmallest(root.left!, k);
  }

  int countLeaves(TreeNode? node) {
    if (node == null) return 0;
    return 1 + countLeaves(node.right) + countLeaves(node.left);
  }
}
