use std::collections::HashSet;

type Num = (i32, i32, i32);

impl Solution {
    pub fn total_numbers(digits: Vec<i32>) -> i32 {
        let mut set = HashSet::new();

        for digit_pair in digits.iter().enumerate() {
            if digit_pair.1 % 2 == 0 {
                Self::create_nums(&digits, &digit_pair, &mut set)
            }
        }

        set.len() as i32
    }

    fn create_nums(digits: &Vec<i32>, end_num: &(usize, &i32), set: &mut HashSet<Num>) {
        let it = (0..digits.len()).filter(|&i| i != end_num.0);

        for i in it.clone() {
            if digits[i] == 0 {
                continue;
            }
            for j in it.clone() {
                if i == j {
                    continue;
                }
                set.insert((digits[i], digits[j], *end_num.1));
            }
        }
    }
}
