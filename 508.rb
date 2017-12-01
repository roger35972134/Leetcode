# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def find_frequent_tree_sum(root)
    @hash = Hash.new
    dfs root
    max = 0
    @hash.each do |h|
        max = h[1] if h[1] > max
    end
    
    max = @hash.values.max
    @hash.map{ |key, value| value == max ? key : nil }.compact
end
def dfs(node)
    return 0 if node.nil?
    sum = node.val
    sum += dfs(node.left)
    sum += dfs(node.right)
    
    if @hash[sum].nil?
        @hash[sum] = 1
    else
        @hash[sum] += 1
    end
    sum
end