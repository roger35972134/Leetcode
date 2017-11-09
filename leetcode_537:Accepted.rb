# @param {String} a
# @param {String} b
# @return {String}
def complex_number_multiply(a, b)
    a1 = a.split("+")[0].to_i
    a_remain = a.split("+")[1]
    a2 = a_remain.split("i")[0].to_i
    
    b1 = b.split("+")[0].to_i
    b_remain = b.split("+")[1]
    b2 = b_remain.split("i")[0].to_i
    
    c1 = a1 * b1 - a2 * b2
    c2 = a1 * b2 + a2 * b1
    
    return "#{c1.to_s}+#{c2.to_s}i"
end