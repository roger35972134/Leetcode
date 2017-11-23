# @param {Integer[]} nums
# @return {Integer}
def single_non_duplicate(nums)
    i = 0
    while i < nums.count
        return nums[i] if nums[i] != nums[i+1]
        i += 2
    end
end