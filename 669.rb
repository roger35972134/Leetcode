# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {TreeNode}
def trim_bst(root, l, r)
    return nil if root.nil?
    unless root.val < l || root.val > r
        res = TreeNode.new(root.val)
        res.left = trim_bst(root.left, l, r)
        res.right = trim_bst(root.right, l, r)
    end
    return trim_bst(root.left,l,r) if root.val > r
    return trim_bst(root.right,l,r) if root.val < l
    res
end