# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0 or x > 2**32-1
    return true if x < 10
    buf = x
    reverse = 0
    while x/10 > 0
        reverse += x %10
        reverse *= 10
        x /= 10
    end
    reverse += x
    return reverse == buf
end