class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int sumEvenGrandparent(TreeNode? root) {
    if (root == null) return 0;
    return (root.val % 2 == 0 ? sumOnDepth(root, 2) : 0) +
        sumEvenGrandparent(root.left) +
        sumEvenGrandparent(root.right);
  }

  int sumOnDepth(TreeNode? root, int depth) {
    if (root == null) return 0;
    if (depth <= 0) return root.val;
    return sumOnDepth(root.left, depth - 1) + sumOnDepth(root.right, depth - 1);
  }
}
