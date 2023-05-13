class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isValidBST(TreeNode? root) {
    if (root == null) return true;
    return check(root.right, (node) => root.val < node.val) &&
        check(root.left, (node) => root.val > node.val) &&
        isValidBST(root.left) &&
        isValidBST(root.right);
  }

  bool check(TreeNode? root, bool test(TreeNode node)) {
    if (root == null) return true;
    return test(root) && check(root.left, test) && check(root.right, test);
  }
}
