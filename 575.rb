# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
    c_set = candies.uniq{|c| {c => "1"}}
    
    if c_set.count < candies.count/2
        c_set.count
    else
        candies.count/2
    end
end