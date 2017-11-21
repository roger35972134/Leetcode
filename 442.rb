# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    map = {}
    res = []
    nums.each_with_index do |v,i| 
        if map[v].nil? 
            map[v] = i
        else
            res.push v
        end
    end
    res
end