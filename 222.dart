class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int countNodes(TreeNode? root) {
    if (root == null) return 0;
    TreeNode? left = root, right = left;
    int lD = 1, rD = 1;
    while ((left = left!.left) != null) lD++;
    while ((right = right!.right) != null) rD++;

    if (lD == rD) return (1 << lD) - 1;
    return 1 + countNodes(root.left) + countNodes(root.right);
  }
}
