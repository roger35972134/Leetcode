# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
    if a == b
        return -1
    else
        if a.length > b.length
            return a.length
        else
            return b.length
        end
    end
end