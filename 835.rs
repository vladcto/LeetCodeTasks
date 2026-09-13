use std::cmp::max;

type Matrix = Vec<Vec<i32>>;

struct IndexPair {
    i: usize,
    j: usize,
}

impl Solution {
    pub fn largest_overlap(img1: Matrix, img2: Matrix) -> i32 {
        let mut res = 0;
        let ones1 = Self::extract_ones(&img1);
        let size = img1.len() as i32;

        for shift_i in -size..size {
            for shift_j in -size..size {
                let mut local_res = 0;

                for ones in &ones1 {
                    let shifted_i = ones.i as i32 + shift_i;
                    let shifted_j = ones.j as i32 + shift_j;

                    if shifted_i < 0 && shifted_j < 0 {
                        continue;
                    }

                    let cell = img2
                        .get(shifted_i as usize)
                        .and_then(|e| e.get(shifted_j as usize));
                    if let Some(value) = cell {
                        if *value == 1 {
                            local_res += 1;
                        }
                    }
                }

                res = max(local_res, res);
            }
        }

        res
    }

    fn extract_ones(matrix: &Matrix) -> Vec<IndexPair> {
        let size = matrix.len();
        let mut res: Vec<IndexPair> = Vec::with_capacity(size * size);

        for i in 0..size {
            for j in 0..size {
                if matrix[i][j] == 1 {
                    res.push(IndexPair { i, j });
                }
            }
        }

        res
    }
}
