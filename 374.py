def guess(num: int) -> int:
  pass
  
class Solution:
    def guessNumber(self, n: int) -> int:
      l = 1 
      r = n
      while True:
        center = (r + l) // 2
        ans = guess(center)
        if ans == -1 : r = center - 1
        elif ans == 1 : l = center + 1
        else : return center