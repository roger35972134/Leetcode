# @param {Integer[][]} people
# @return {Integer[][]}
# Runtime: 1736 ms
def reconstruct_queue(people)
    for i in 0..people.count-1
        for j in 0..people.count-1
            if people[i][0] > people[j][0]
                temp = people[i]
                people[i] = people[j]
                people[j] = temp
            elsif people[i][0] == people[j][0] && people[i][1] < people[j][1]
                temp = people[i]
                people[i] = people[j]
                people[j] = temp
            end
        end
    end
    
    res = []
    people.each do |p|
        res.insert(p[1],p)
    end
    res
end

# Another version
# Runtime: 132 ms
# def reconstruct_queue(people)     
#    people.sort! { |a, b| a[0] != b[0] ? b[0] - a[0] : a[1] - b[1] }
#    res = []
#    people.each { |p| res.insert(p[1], p) }
#    res
# end