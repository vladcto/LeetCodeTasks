import kotlin.math.max

class Solution {
    fun lengthOfLongestSubstring(s: String): Int {
        val occurrence = mutableMapOf<Char, Int>()
        var res = 0
        var last = 0

        for (i in s.indices) {
            val current = s[i]
            if (occurrence.contains(current)) {
                res = max(i - last, res)
                last = max(last , occurrence[current]!! + 1)
            }
            occurrence[current] = i
        }

        return max(res, s.length - last)
    }
}