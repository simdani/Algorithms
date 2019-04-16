class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        arr = nums1 + nums2
        arr.sort()
        size = len(arr)
        if size % 2:
            return float(arr[size // 2])
        else:
            return (arr[size // 2 - 1] + arr[size//2]) / 2

if __name__ == "__main__":
    print(Solution().findMedianSortedArrays([1, 2], [3, 4]))