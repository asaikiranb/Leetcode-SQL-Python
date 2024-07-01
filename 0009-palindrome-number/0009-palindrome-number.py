class Solution:
    def isPalindrome(self, x: int) -> bool:
        # Convert the integer to a string
        s = str(x)
        # Compare the string with its reverse
        return s == s[::-1]
