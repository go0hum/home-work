import UIKit

func longestCommon(_ strs: [String]) -> String {
    if strs.isEmpty {
        return ""
    }
    var minStr = ""
    var minStrCount = 201
    for i in 0 ..< strs.count {
      let str = strs[i]
      if minStrCount > str.count {
        minStrCount = str.count
        minStr = str
      }
    }
    if minStr.isEmpty {
      return ""
    }

    let filteredArray = strs.filter { $0 != minStr }.map { Array($0) }

    if filteredArray.isEmpty {
      return minStr
    }

    var ret = ""
    var isChecked = false
    for (i, c) in minStr.enumerated() {
      for str in filteredArray {
        if str[i] == c {
          isChecked = true
        } else {
          isChecked = false
          break
        }
      }

      if isChecked {
        ret.append(c)
      } else {
        return ret
      }
    }

    return ret
}

print(longestCommon(["dog", "racecar", "car"]))
print(longestCommon(["flower", "flow", "flight"]))
