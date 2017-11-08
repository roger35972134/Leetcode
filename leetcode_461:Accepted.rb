# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    x = x.to_s(2)
    y = y.to_s(2)
    front = '0000000000000000000000000000000'
    x = (front + x).reverse
    y = (front + y).reverse
    
    counts = 0    
    32.times do |i|
        if x[i] != y[i]
            counts += 1
        end
    end
    
    counts
end