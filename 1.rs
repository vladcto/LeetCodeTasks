use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut num_index: HashMap<i32, i32> = HashMap::new();
        for (i, num) in nums.iter().enumerate() {
            if let Some(&index) = num_index.get(&(target - num)) {
                return [i as i32, index].to_vec();
            }
            num_index.insert(*num, i as i32);
        }
        unreachable!()
    }
}
