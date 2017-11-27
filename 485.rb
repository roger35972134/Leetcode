# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    max = 0
    count = 0
    nums.each do |n|
        if n == 1
            count += 1
            if max < count
                max = count
            end
        else
            count = 0
        end
    end
    max
end