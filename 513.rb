# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @return {Integer}
# Runtime: 62 ms
def find_bottom_left_value(root)
    queue = []
    queue.push root
    res = root.val
    while(queue.size != 0)
        buf = []
        flag = false
        res = queue[0].val
        queue.each do |q|
            buf.push q.left unless q.left.nil?
            buf.push q.right unless q.right.nil?
        end
        queue = buf
    end
    res
end