# @param {String} s
# @return {Integer}
def count_substrings(s)
    len = s.length
    count = 0
    dp = Array.new(len) {Array.new(len, false)}
    (len-1).downto(0) do |i|
        (i..len).each do |j|
            if s[i] == s[j]
                if j-i < 2
                    dp[i][j] = true
                else
                    dp[i][j] = dp[i+1][j-1]
                end
            end
            count +=1 if dp[i][j]
        end
    end
    count
end