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
def max_depth(root)
    count = 0
    return count if root.nil?
    q = []
    q.push root
    
    while !q.empty?
        p = []
        q.each do |e|
            p.push e.right if e.right
            p.push e.left if e.left
        end
        q = p
        count += 1
    end
    count
end