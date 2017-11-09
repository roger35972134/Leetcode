# @param {String} s
# @return {String}
def reverse_words(s)
    s = s.split
    answer = []
    s.each do |c|
        answer.push c.reverse
    end
    answer.join(" ")
end