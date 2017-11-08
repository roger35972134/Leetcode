# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
    return nil if nums.empty?
    max_index = find_max_node(nums)
    root = TreeNode.new(nums[max_index])
    
    left, right = [], []
    
    for i in 0..(max_index-1)
       left.push nums[i] 
    end
    
    for i in max_index+1..(nums.size-1)
       right.push nums[i] 
    end
    
    root.left = construct_maximum_binary_tree(left)
    root.right = construct_maximum_binary_tree(right)
    
    
    root
end
def find_max_node(nums)      
    max_value = 0
    max_index = 0
    for i in 0..nums.size-1
        if nums[i] > max_value
            max_value = nums[i]
            max_index = i
        end
    end
    max_index
end