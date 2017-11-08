# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    nums = nums.sort
    result = 0
    i = 0
    while i < nums.size
        result += nums[i]
        i += 2
    end
    result
end