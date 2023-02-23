class Solution:
    def maxIceCream(self, costs: List[int], coins: int) -> int:
        coins.sort()
        res = 0
        for coin in coins:
            costs -= coin
            if costs < 0:
                return res
            res += 1
        return res