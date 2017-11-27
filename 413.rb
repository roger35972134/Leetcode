# @param {Integer[]} a
# @return {Integer}
def number_of_arithmetic_slices(a)
    len, max, res = 2, 0, 0
    (2..a.length-1).each do |i|
        if a[i]-a[i-1] == a[i-1]-a[i-2]
            len += 1
        else
            res += (len - 1) * (len - 2) / 2 if len > 2 
            len = 2
        end
    end
    res += (len - 1) * (len - 2) / 2 if len > 2
    
    res
end