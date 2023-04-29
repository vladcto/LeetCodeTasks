class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int sumOfLeftLeaves(TreeNode? root, [bool left = false]) {
    if (root == null) return 0;
    if (left && root.left == null && root.right == null) return root.val;

    return sumOfLeftLeaves(root.left, true) +
        sumOfLeftLeaves(root.right, false);
  }
}
