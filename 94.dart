class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    if (root == null) return [];
    return [root.val]
      ..addAll(inorderTraversal(root.left))
      ..addAll(inorderTraversal(root.right));
  }
}
