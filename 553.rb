# @param {Integer[]} nums
# @return {String}
def optimal_division(nums)
    res = ""
    if nums.count > 2
        res = "#{nums[0]}/(#{nums[1]}"
        for i in 2..nums.count-1
            res += "/#{nums[i]}"
        end
        res += ")"
    elsif nums.count == 1
        res = "#{nums[0]}"
    elsif nums.count == 2
        res = "#{nums[0]}/#{nums[1]}"
    end
    res
end