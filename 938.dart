class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int rangeSumBST(TreeNode? root, int low, int high, [int sum = 0]) {
    if (root == null) return sum;
    int lSum = 0;
    if (root.val >= low) lSum = rangeSumBST(root.left, low, high, sum);
    int rSum = 0;
    if (root.val <= high) lSum = rangeSumBST(root.right, low, high, sum);
    if (root.val >= low && root.val <= high) sum += root.val;
    return sum + lSum + rSum;
  }
}
