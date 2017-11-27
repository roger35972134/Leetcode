# @param {Integer} n
# @return {Integer}
def count_arrangement(n)
    @res = 0
    h = Hash.new { false }
    backtrack(n,n,h)
    @res
end
def backtrack(n, pos, h)
    if pos == 0
        @res += 1
        return
    end
    
    (1..n).each do |i|
        if !h[i] and (i % pos == 0 || pos % i == 0)
            h[i] = true
            backtrack(n,pos-1,h)
            h[i] = false
        end
    end
end