/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
 *
 * https://leetcode-cn.com/problems/merge-two-sorted-lists/description/
 *
 * algorithms
 * Easy (62.64%)
 * Likes:    1097
 * Dislikes: 0
 * Total Accepted:    284.9K
 * Total Submissions: 454.2K
 * Testcase Example:  '[1,2,4]\n[1,3,4]'
 *
 * 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。 
 * 
 * 
 * 
 * 示例：
 * 
 * 输入：1->2->4, 1->3->4
 * 输出：1->1->2->3->4->4
 * 
 * 
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var (l1, l2) = (l1, l2)
        var result = ListNode(0)
        var head: ListNode? = result
        while l1 != nil, l2 != nil {
            if l1!.val <= l2!.val {
                head?.next = l1
                l1 = l1?.next
            } else { 
                head?.next = l2
                l2 = l2?.next
            }
            head = head?.next
        }
        head?.next = l1 ?? l2
        return result.next
    }
}
// @lc code=end

