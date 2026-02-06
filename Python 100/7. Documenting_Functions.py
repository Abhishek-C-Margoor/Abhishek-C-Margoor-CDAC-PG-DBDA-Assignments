def twoSum(nums, target):
        tar=target
        l1=[]
        for i in range(len(nums)-1):
            for j in range(i+1,len(nums)):
                if nums[i]+nums[j] == tar:
                    print([i,j])

twoSum([2,7,11,15],9)
