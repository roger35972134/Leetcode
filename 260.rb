# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
    res = []
    nums = nums.sort
    n = nums.count
    i = 0
    while i < n
        if nums[i] != nums[i+1]
            res.push nums[i]
            i += 1
        else
            i += 2
        end
        break if res.count == 2
    end
    res
end