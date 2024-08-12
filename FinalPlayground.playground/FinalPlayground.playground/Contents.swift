import UIKit

//Question1

func dayOfWeek (dayNumber: Int) -> String{
    switch dayNumber{
    case 1: return "Sunday"
    case 2: return "Monday"
    case 3: return "Tuesday"
    case 4: return "Wednesday"
    case 5: return "Thursday"
    case 6: return "Friday"
    case 7: return "Saturday"
    default: return "Invalid data entered!!"
        }
}

print(dayOfWeek(dayNumber: 1))
print(dayOfWeek(dayNumber: 2))
print(dayOfWeek(dayNumber: 3))

//Question2

func fibonnaci(Integer n: Int) -> Bool {
    var num = n
    var sum = 0
    let originalNumber = num
    
    while num != 0 {
        let digit = num % 10
        sum += digit * digit * digit
        num /= 10
    }
    
   
    return sum == originalNumber
}

print(fibonnaci(Integer: 153))
print(fibonnaci(Integer: 123))

//Question 3

func threeSum(Integer nums: [Int], Integer target: Int) -> [[Int]] {
    var result = [[Int]]()
    let sortedNums = nums.sorted()
    let n = sortedNums.count
    
    for i in 0..<(n - 2) {
        
        if i > 0 && sortedNums[i] == sortedNums[i - 1] {
            continue
        }
        
        var left = i + 1
        var right = n - 1
        
        while left < right {
            let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
            if sum == target {
                result.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
                while left < right && sortedNums[left] == sortedNums[left - 1] {
                    left += 1
                }
                while left < right && sortedNums[right] == sortedNums[right + 1] {
                    right -= 1
                }
            } else if sum < target {
                 left += 1
            } else {
                 right -= 1
            }
        }
    }
    
    return result
}

let nums = [-1, 0, 1, 2, -1, -4]
let target = 0
print(threeSum(Integer: nums, Integer: target))

