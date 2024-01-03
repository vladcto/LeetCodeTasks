class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        val map = mutableMapOf<Int, Int>()
        nums.forEachIndexed { index, elem ->
            map[target - elem]?.let {
                return intArrayOf(map[target - elem]!!, index)
            }
            map[elem] = index
        }
        throw Throwable()
    }
}

