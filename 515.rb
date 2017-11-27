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
def largest_values(root)
    return [] if root.nil?
    res = []
    queue = []
    queue.push root
    
    until queue.empty?
        res.push (queue.max {|p,q| p.val <=> q.val}).val
        buf = []
        queue.each do |q|
            buf.push q.left if q.left
            buf.push q.right if q.right
        end
        queue = buf
    end
    res
end