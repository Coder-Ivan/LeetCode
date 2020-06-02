/*
 * @lc app=leetcode.cn id=7 lang=swift
 *
 * [7] 整数反转
 *
 * https://leetcode-cn.com/problems/reverse-integer/description/
 *
 * algorithms
 * Easy (34.07%)
 * Likes:    1842
 * Dislikes: 0
 * Total Accepted:    336.1K
 * Total Submissions: 986.5K
 * Testcase Example:  '123'
 *
 * 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
 * 
 * 示例 1:
 * 
 * 输入: 123
 * 输出: 321
 * 
 * 
 * 示例 2:
 * 
 * 输入: -123
 * 输出: -321
 * 
 * 
 * 示例 3:
 * 
 * 输入: 120
 * 输出: 21
 * 
 * 
 * 注意:
 * 
 * 假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−2^31,  2^31 − 1]。请根据这个假设，如果反转后整数溢出那么就返回
 * 0。
 * 
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var tmp = x
        var result = 0
        while tmp != 0 {
            let a = tmp % 10
            tmp = tmp / 10
            result = result * 10 + a
        }
        guard result < Int32.max && result > Int32.min else { return 0 }
        return result
    }
}
// @lc code=end

