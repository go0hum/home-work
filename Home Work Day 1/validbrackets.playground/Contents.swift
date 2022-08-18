import UIKit

func validBrackets(input: String) -> Bool {
    let arr = Array(input)
    let total = arr.count
    
    if Int(total % 2) != 0 {
        return false
    }

    var inc: Int = 0
    var output: Bool = false
    
    while inc < total {
        if Int(inc % 2) == 0 {
            if arr[inc] == "(" && arr[inc + 1] == ")" || arr[inc] == "{" && arr[inc + 1] == "}" || arr[inc] == "[" && arr[inc + 1] == "]" {
                output = true
            } else {
                return false
            }
        }
        inc += 2
    }
    return output
}


print(validBrackets(input: "()[]{}"));


