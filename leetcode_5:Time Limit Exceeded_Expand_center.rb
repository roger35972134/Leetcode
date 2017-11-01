# @param {String} s
# @return {String}
def odd_extend(s, c)
    res = ""
    for i in 1..c
        unless s[c-i] == s[c+i]
            break
        else
            res = s[(c-i)..(c+i)]
        end
    end
    res
end
def even_extend(s, c) # center in even we define at the first floor index on left
    res = ""
    for i in 1..c+1
        unless s[c-i+1] == s[c+i]
            break
        else
            res = s[(c-i+1)..(c+i)]
        end
    end
    res
end
def longest_palindrome(s)
    longest = ""
    if s.eql? ""
        return ""
    end
    
    s.length.times do |c| # c for center
        odd = odd_extend(s, c)
        if odd.length > longest.length
            longest = odd
        end
    
        even = even_extend(s, c)
        if even.length > longest.length
            longest = even
        end
    end
    
    if longest == ""
        longest = s[s.length-1]
    end
    return longest
end