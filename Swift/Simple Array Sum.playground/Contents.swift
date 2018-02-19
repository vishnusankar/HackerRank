//: Playground - noun: a place where people can play

import UIKit

infix operator ++

extension String {
    
    static func ++ (lhs: String, rhs: String) -> String {
        var sumStr : String = ""
        //if lhs counr greater than rhs then swap the string
        var leftStr = String(lhs)
        var rightStr = String(rhs)
        if lhs.count > rhs.count {
            swap(&leftStr, &rightStr)
        }
        
        //Reverse the string to do addition from left to right instead of right to left
        leftStr = String(leftStr.reversed())
        rightStr = String(rightStr.reversed())
        if (rightStr.utf8.count > 0 && leftStr.utf8.count > 0) {
            var count = 0
            var currentIndex : String.Index
            var resultStr : String = ""
            var carry = 0
            for utf8ValueLeft in leftStr.utf8 {
                currentIndex = rightStr.utf8.index(rightStr.startIndex, offsetBy:count)
                let utf8ValueRight = rightStr.utf8[currentIndex]
                let rightValue = Int(utf8ValueRight) - 48
                let leftValue = Int(utf8ValueLeft) - 48
                let total = rightValue + leftValue + carry
                
                let lastdigit = total%10
                resultStr.append(String(lastdigit))
                carry = total/10
                count += 1
            }
            
            //Add Remaining Characters
            let startIndex = rightStr.utf8.index(rightStr.utf8.startIndex, offsetBy: leftStr.utf8.count)
            let range = startIndex..<rightStr.utf8.endIndex
            let remainingStr = rightStr.utf8[range]
            for utf8Value in remainingStr {
                
                let value = Int(utf8Value) - 48
                print(value)

                let sum = value + carry
                let lastDigit = sum % 10
                resultStr.append(String(lastDigit))
                carry = sum / 10
            }
            
            if carry > 0 {
                let carryStr = String(carry)
                resultStr.append(carryStr)
            }
            let reReverseResultStr = String(resultStr.reversed())
            sumStr.append(reReverseResultStr)
        }
        return sumStr
    }
}
extension Array  where Element == String {
    
    func sum() -> String {
        var sumValue : String = "0"
        for i in 0..<self.count {

            let currentStrValue = self[i]
            //Add two values
            sumValue = self[i] ++ sumValue
        }
        return sumValue
    }
}

//Float & Double & Int &

let n = 6
var str = "338 65 713 595 428 610 728 573 871 868".components(separatedBy: " ")
let result = str.sum()


