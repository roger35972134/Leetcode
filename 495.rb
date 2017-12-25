# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
    return 0 if time_series.empty?
    res = duration
    (1..time_series.size-1).each do |t|
        res += [(time_series[t] - time_series[t-1]),duration].min
    end
    res
end