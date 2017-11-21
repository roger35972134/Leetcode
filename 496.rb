# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
    res = []
    map = {}
    nums.each_with_index{|v,i| map[v] = i}
    find_nums.each do |f|
        flag = true
        index = map[f]
        (index+1..nums.size-1).each do |i|
            if nums[i] > f
                res.push nums[i]
                flag = false
                break
            end
        end
        res.push -1 if flag
    end
    res
end