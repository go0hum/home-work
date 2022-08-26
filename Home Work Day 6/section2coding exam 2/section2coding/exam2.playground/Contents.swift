import UIKit

/*
 Find the second-largest value of an array, in linear time.
 For this case, we'll consider unique values.

 input: [1, 2, 3, 4, 5, 5]
 output: 4
 Also factor in empty or single-element arrays.

 input: [1]
 output: nil
 */

func largest(_ input: [Int]) -> Int? {
    
    if input.count < 2 {
        return nil
    }
    
    let sortedInput = input.sorted {
        $0 < $1
    }
    
    for index in stride(from: sortedInput.count, to: 0, by: -1) {
        if (index - 2 >= 0) && (sortedInput[index - 2] != sortedInput[index - 1]) {
            return sortedInput[index - 2]
        }
    }
    
    return nil
}

print(largest([1, 2, 3, 4, 5, 5]))
print(largest([1]))
print(largest([10, 10, 10]))
