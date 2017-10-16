# @param {String} s
# @return {Integer}
def roman_to_int(s)
    # different signs in 1 ~ 3999: I-1, V-5, X-10, L-50, C-100, D-500, M-1000
    table = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
    sum = 0
    i = 0
    while i < s.length
        puts s[i]
        v1 = table[s[i]]
        v2 = 0
        v2 = table[s[i+1]] unless s[i+1].nil?

        if v1 < v2
            sum = sum + v2 - v1
            i += 1
        else
            sum += v1
        end
        i += 1
        puts sum
    end
    sum
end