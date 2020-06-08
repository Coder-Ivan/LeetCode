/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 *
 * https://leetcode-cn.com/problems/valid-parentheses/description/
 *
 * algorithms
 * Easy (41.69%)
 * Likes:    1604
 * Dislikes: 0
 * Total Accepted:    293.1K
 * Total Submissions: 702.6K
 * Testcase Example:  '"()"'
 *
 * 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。
 * 
 * 有效字符串需满足：
 * 
 * 
 * 左括号必须用相同类型的右括号闭合。
 * 左括号必须以正确的顺序闭合。
 * 
 * 
 * 注意空字符串可被认为是有效字符串。
 * 
 * 示例 1:
 * 
 * 输入: "()"
 * 输出: true
 * 
 * 
 * 示例 2:
 * 
 * 输入: "()[]{}"
 * 输出: true
 * 
 * 
 * 示例 3:
 * 
 * 输入: "(]"
 * 输出: false
 * 
 * 
 * 示例 4:
 * 
 * 输入: "([)]"
 * 输出: false
 * 
 * 
 * 示例 5:
 * 
 * 输入: "{[]}"
 * 输出: true
 * 
 */

// @lc code=start
class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack = [Character]()
        for char in s {
            if isPair(left: stack.last, right: char) {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }
        return stack.isEmpty
    }

    func isPair(left: Character?, right: Character) -> Bool {
        return left == "(" && right == ")" || left == "[" && right == "]" || left == "{" && right == "}"
    }
}
// @lc code=end

