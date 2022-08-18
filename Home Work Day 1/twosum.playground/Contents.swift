import UIKit

func twoSum(nums: [Int], target: Int) -> Array<Int> {
    let total = nums.count
    
    if total == 0 {
        return []
    }

    var inc: Int = 0
    var output: [Int] = []
    
    while inc < total {
        
        if inc + 1 >= total {
            break
        }
        
        if nums[inc] + nums[inc + 1] == target {
            output.append(inc)
            output.append(inc + 1)
        }
        inc += 1
    }
    return output
}

print(twoSum(nums: [2,7,11,15], target: 9))
print(twoSum(nums: [3,2,4], target: 6))
print(twoSum(nums: [3,3], target: 6))
