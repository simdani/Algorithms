# given a string, find the length of the longest substring without repeating characters
# Input: "abcabcbb"
# Output

class Solution(object):
    def lenghtOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        dic, res, start = {}, 0, 0
        for i, ch in enumerate(s):
            print(i)
            # char is already in dictionary
            if ch in dic:
                # check length from start of string to index
                res = max(res, i - start)
                # update start of string index to the next index
                start = max(start, dic[ch] + 1)
            # add.update char to dictionary
            dic[ch] = i
        # asnwer is either in the beggining/midle or some mmid to the end of string
        return max(res, len(s) - start)
            


if __name__ == "__main__":
    string1 = "abcabcbb"
    string2 = "bbbbb"
    string3 = "pwwkew"
    longestSubstring = Solution().lenghtOfLongestSubstring(string3)
    print(longestSubstring)