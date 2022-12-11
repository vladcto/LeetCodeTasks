class Solution:
    nowRes = 0

    def maxProduct(self, root: Optional[TreeNode]) -> int:
        treeSum(root)
        return self.dfs(root, treeSum(root)) % (1000000000 + 7)

    def dfs(self, root, sumTree):
        if root is None:
            return 0
        lDfs = self.dfs(root.left, sumTree)
        rDfs = self.dfs(root.right, sumTree)
        nowSum = root.val + lDfs + rDfs
        self.nowRes = max(self.nowRes, nowSum * (sumTree - nowSum))
        return nowSum


def treeSum(root) -> int:
    if root is None:
        return 0
    return root.val + treeSum(root.left) + treeSum(root.right)
