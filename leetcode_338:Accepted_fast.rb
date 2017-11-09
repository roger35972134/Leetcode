# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    answer = [0]
    (1..num).each do |n|
        answer[n] = answer[n>>1] + (n & 1)
    end
    answer
end