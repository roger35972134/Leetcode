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
    l3 = ListNode.new(0)
    buf = l3
    overflow = 0
    #unless l1.val != 0 || l2.val != 0
        while l1 || l2 || overflow > 0 do
            l3.val = l3.val + overflow
            overflow = 0
            
            if (l1.val + l2.val) >= 10
                l3.val = (l1.val + l2.val)%10#
                overflow = (l1.val + l2.val)/10     
            else
                l3.val = l1.val + l2.val
            end
            
            l1 = l1.next
            l2 = l2.next
            
            if (l1 || l2) && !l3.next
                l3.next = ListNode.new(0)
            end
        end
    #end
    
    buf
end