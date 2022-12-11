class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    var res1 = dfs(root1!);
    var res2 = dfs(root2!);
    if (res1.length != res2.length) return false;
    for (int i = 0; i < res1.length; i++) if (res1[i] != res2[i]) return false;
    return true;
  }

  List<int> dfs(TreeNode root) {
    if (root.left == null && root.right == null) return [root.val];
    var res = <int>[];
    if (root.left != null) res.addAll(dfs(root.left!));
    if (root.right != null) res.addAll(dfs(root.right!));
    return res;
  }
}
