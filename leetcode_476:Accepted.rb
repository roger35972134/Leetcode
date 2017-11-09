# @param {Integer} num
# @return {Integer}
def find_complement(num)
    bn =num.to_s(2)
    (0..bn.size-1).each do |s|
        bn[s] == "1" ? bn[s] = "0" : bn[s] = "1"
    end
    bn.to_i(2)
end