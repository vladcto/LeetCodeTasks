use std::cell::RefCell;
use std::ops::Add;
use std::rc::Rc;

type NodeRef = Rc<RefCell<TreeNode>>;

#[derive(Default)]
struct Backtrack {
    valid_count: i32,
    acc: i32,
    nodes_count: i32,
}

impl Add for Backtrack {
    type Output = Backtrack;

    fn add(self, rhs: Self) -> Self::Output {
        Backtrack {
            valid_count: self.valid_count + rhs.valid_count,
            acc: self.acc + rhs.acc,
            nodes_count: self.nodes_count + rhs.nodes_count,
        }
    }
}

impl Solution {
    pub fn average_of_subtree(root: Option<NodeRef>) -> i32 {
        Solution::count(&root).valid_count
    }

    pub fn count(node: &Option<NodeRef>) -> Backtrack {
        let Some(node) = node.as_ref().map(|e| e.borrow()) else {
            return Backtrack::default();
        };

        let mut subtree = Self::count(&node.left) + Self::count(&node.right);
        subtree.acc += node.val;
        subtree.nodes_count += 1;
        subtree.valid_count += (subtree.acc / subtree.nodes_count == node.val) as i32;

        subtree
    }
}
