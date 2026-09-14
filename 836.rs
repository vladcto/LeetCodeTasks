use std::convert::TryInto;

impl Solution {
    pub fn is_rectangle_overlap(rec1: Vec<i32>, rec2: Vec<i32>) -> bool {
        let [b1, l1, t1, r1]: [i32; 4] = rec1.try_into().unwrap();
        let [b2, l2, t2, r2]: [i32; 4] = rec2.try_into().unwrap();

        !(b1 >= t2 || t1 <= b2 || l1 >= r2 || r1 <= l2)
    }
}