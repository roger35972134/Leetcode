# @param {String} s
# @return {Integer}
# ----------time limit-------------
def length_of_longest_substring(s)    
    longest_length = 0
    for i in 0..s.length-1
        check = []
        for j in i..s.length-1
            unless check.include? s[j]
                check.push s[j]
            else
                break
            end
        end
        if check.size > longest_length
            longest_length = check.size
            index = i
        end
    end
    longest_length
end
