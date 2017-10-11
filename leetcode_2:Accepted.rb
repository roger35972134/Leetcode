# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    return l1 if l2.nil?
    return l2 if l1.nil?
    
    root = nil # head of answer list
    tail = nil # tail of answer list
    overflow = 0
    
    while l1 || l2 || overflow > 0 do
        v = overflow
            
        unless l1.nil?
            v += l1.val
            l1 = l1.next
        end
            
        unless l2.nil?
            v += l2.val
            l2 = l2.next
        end
            
        overflow = v/10
        v = v%10
            
        new_node = ListNode.new(v)
        
            
        root = new_node if root.nil?
        tail.next = new_node unless tail.nil? # tail move to next node
        tail = new_node
    end
    root
end
