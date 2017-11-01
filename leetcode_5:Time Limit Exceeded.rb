# @param {String} s
# @return {String}
def longest_palindrome(s)
    answer = ""
    return "" if s.eql? ""
    
    for len in 1..s.length
        for i in 0..s.length-len-1
            flag = true
            for si in 0..len/2
                unless s[i+si].eql? s[len+i-si]
                    flag = false
                     break
                end
            end
            answer = s[i..len+i] if flag
        end
    end
    answer = s[s.length-1] if answer.eql? ""
    return answer
end