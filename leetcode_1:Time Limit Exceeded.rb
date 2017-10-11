def two_sum(nums, target)
    for i in 0..nums.size-1
        for j in i+1..nums.size-1
            if nums[j] + nums[i] == target
                return [i,j]
            end
        end
    end
end