class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> answer = [];

  List<int> rightSideView(TreeNode? root, [int depth = 0]) {
    if (root == null) return [];
    if (answer.length <= depth) answer.add(root.val);
    rightSideView(root.right, depth + 1);
    rightSideView(root.left, depth + 1);
    return answer;
  }
}
