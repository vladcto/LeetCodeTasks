class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> suffixProduct = List.filled(nums.length, 1);
    for(int i = 1; i < nums.length; i++){
      suffixProduct[i] =  suffixProduct[i - 1] * nums[i - 1];
    }

    List<int> postfixProduct = List.filled(nums.length, 1);
    for(int i =  nums.length - 2; i >= 0; i--){
      postfixProduct[i] =  postfixProduct[i + 1] * nums[i + 1];
    }

    List<int> res = List.generate(nums.length, 
      (i) => suffixProduct[i] * postfixProduct[i],
    );
    return res;
  }
}