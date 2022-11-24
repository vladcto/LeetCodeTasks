class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<List<int>> pathSum(TreeNode? root, int targetSum) {
    return dfs(root, targetSum, []);
  }

  List<List<int>> dfs(TreeNode? node, int targetSum, List<int> path) {
    if (node == null) return [];
    if (node.right == null && node.left == null)
      return targetSum - node.val == 0 ? [List.from(path)..add(node.val)] : [];

    path.add(node.val);
    var res1 = dfs(node.right, targetSum - node.val, path);
    var res2 = dfs(node.left, targetSum - node.val, path);
    path.removeLast();
    
    return res1..addAll(res2);
  }
}
