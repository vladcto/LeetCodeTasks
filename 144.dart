class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> preorderTraversal(TreeNode? root) {
    if (root == null) return [];
    return [root.val]
      ..addAll(preorderTraversal(root.left))
      ..addAll(preorderTraversal(root.right));
  }
}
