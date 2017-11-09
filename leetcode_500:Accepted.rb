# @param {String[]} words
# @return {String[]}
def find_words(words)
    lines = ["QWERTYUIOP", "ASDFGHJKL", "ZXCVBNM"]
    answer = []
    
    words.each do |w|
        buf = w.upcase
        flag = true
        line_index = 0
        for i in 0..2
            if lines[i].include?(buf[0])
                line_index = i
            end
        end
        
        for i in 0..w.length-1
            unless lines[line_index].include?(buf[i])
                flag = false
                break
            end
        end
        answer.push w if flag
    end
    answer
end