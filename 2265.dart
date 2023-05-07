class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int averageOfSubtree(TreeNode? root) {
    if (root == null) return 0;
    int count = reduceTree(root, (_) => 1);
    int sum = reduceTree(root, (e) => e.val);
    int average = sum ~/ count;

    return (root.val == average ? 1 : 0) +
        averageOfSubtree(root.left) +
        averageOfSubtree(root.right);
  }

  int reduceTree(TreeNode? root, int Function(TreeNode node) action) {
    if (root == null) return 0;
    return action(root) +
        reduceTree(root.left, action) +
        reduceTree(root.right, action);
  }
}
