# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
    n = n.to_s(2).chars
    bit = n[0]
    n.delete_at 0
    n.each do |b|
        if b == bit
            return false
        else
            bit = b
        end
    end
    return true
end