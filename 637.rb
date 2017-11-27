# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @return {Float[]}
def average_of_levels(root)
    queue = []
    res = []
    
    queue.push root
    res.push root.val
    while !queue.empty?
        buf = []
        queue.each do |q|
            buf.push q.left if q.left
            buf.push q.right if q.right
        end
        queue = buf
        sum = 0
        buf.each do |b|
           sum += b.val
        end
        res.push sum.to_f/buf.count if buf.count != 0
    end
    res
end