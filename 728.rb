# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
    res = []
    (left..right).each do |n|
        ns = n.to_s
        flag = true
        ns.chars.each do |s|
            if s == '0'
                flag = false
                break
            end
            unless n % s.to_i == 0
                flag = false
                break
            end
        end
        res.push n if flag
    end
    res
end