# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
    if (nums.count*nums[0].count) == r*c
        res = Array.new(r) { Array.new(c) }
        r_count, c_count = 0, 0 
        nums.each do |n_row|
            n_row.each do |n|            
                if c_count == c
                    c_count = 0
                    r_count += 1
                end
                puts "r = #{r_count}, c = #{c_count}"
                res[r_count][c_count] = n
                c_count += 1
            end
        end
        return res
    else
        return nums
    end
end
