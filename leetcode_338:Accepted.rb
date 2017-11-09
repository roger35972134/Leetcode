# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    answer = []
    (0..num).each do |n|
        answer.push n.to_s(2).count("1")
    end
    answer
end