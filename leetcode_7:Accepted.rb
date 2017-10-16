# @param {Integer} x
# @return {Integer}
def reverse(x)
    if x == 0
        return x
    elsif x < 0
        x -= x*2
        zero_issue(x)
        x = x.to_s.reverse.to_i
        
        if x > 2147483647
            return 0
        end
        x -= x*2
    else
        zero_issue(x)
        x = x.to_s.reverse.to_i
        if x >2147483647
            return 0
        end
    end
    
    x
end
def zero_issue(x)
    while x % 10 == 0 do
        x = x/10
    end
    x
end