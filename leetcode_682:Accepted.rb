# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
    final = 0
    stack = []
    
    (0..ops.size-1).each do |i|
        
        if ops[i] == "D"
            stack.push (2 * stack.last)
        elsif ops[i] == "+"
            v = stack.pop
            new1 = v + stack.last
            stack.push v
            stack.push new1
        elsif ops[i] == "C"
            stack.pop
        else
            stack.push ops[i].to_i
        end
        #puts final
    end
    
    stack.each do |s|
        final += s
    end
    final
end