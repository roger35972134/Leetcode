# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
    return [] if root.nil?
    
    temp = root.right
    root.right = root.left
    root.left = temp
    
    invert_tree(root.left)
    invert_tree(root.right)
    
    root    
end
