# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

class Solution:
    def firstBadVersion(self, n: int) -> int:
        l = 1 
        r = n 
        while l <= r:
            center = (l + r) // 2
            if isBadVersion(center):
                r = center - 1
            else:
                l = center + 1
        return (l + r) // 2 + 1