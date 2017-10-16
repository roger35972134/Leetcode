# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    unless strs.empty?
        runtimes = strs[0].length
        result = ""
        for i in 0..runtimes-1
            flag = true
            standard = strs[0][i]
            strs.each do |str|
                
                unless str[i].eql? standard
                    return result
                end
            end
            result += standard if flag
        end
        
        return result
    else
        return ""
    end
end