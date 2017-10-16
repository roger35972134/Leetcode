# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    if x < -2147483647 or x > 2147483647
        return false
    end
    x = x.to_s
    for i in 0..x.length-1
        if x[i] != x[x.length-i-1]
            return false
        end
    end
    return true
end