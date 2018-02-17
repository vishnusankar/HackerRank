//: Playground - noun: a place where people can play

import UIKit


var a = "92555555555555546"
var b = "15"


//1) Reverse both strings.
    a = String(a.reversed())
    b = String(b.reversed())

//2) Swap if first value extr
if a.count > b.count {
    swap(&a, &b)
}

var count = 0
var currentIndex : String.Index
var resultStr : String = ""
var carry: Int = 0

for utf8ValueA in a.utf8 {
    currentIndex = b.utf8.index(b.startIndex, offsetBy: count)
    let utf8ValueB = b.utf8[currentIndex]
    let integerValueA = Int(utf8ValueA) - 48
    let integerValueB = Int(utf8ValueB) - 48
    let total = (integerValueA + integerValueB + carry)
    let lastDigitOfTotal = total%10
    resultStr.append(String(lastDigitOfTotal))
//    print("\(integerValueA) \(integerValueB)")
    carry = total / 10
    count += 1
}

//Add remaining digits
let startIndex = b.utf8.index(b.utf8.startIndex, offsetBy: a.utf8.count)
let range = startIndex..<b.utf8.endIndex
let reminingString = b.utf8[range]
for utf8Value in reminingString {
    let value = Int(utf8Value) - 48
    let sum = value + carry
    let lastDigit = sum%10
    resultStr.append(String(lastDigit))
    carry = sum / 10
}

if carry > 0 {
    resultStr.append(String(carry))
}
let outputStr = String(resultStr.reversed())
print(outputStr)


// Step 2
//var carry : Int = 0
//var result : String = ""
//var nextStartIndex : String.Index
//var lastIndex : String.Index
//
//for index in a.indices {
//    let sum = (Int(String(a[index])) ?? 0) + (Int(String(b[index])) ?? 0 ) + carry
//    let lastDigit = sum%10
////    print("carry - \(carry)")
//    result.append(String(lastDigit))
//    carry = sum/10
//}
//
////Add remaining digits
//let startIndex = b.index(b.startIndex, offsetBy:a.count)
//let range = startIndex..<b.endIndex
//let remainingString = b[range]
//for i in remainingString.indices {
//    let sum = ((Int(String(b[i])) ?? 0) + carry)
//    let lastDigit = sum%10
//    result.append(String(lastDigit))
//    carry = sum/10
//
//}
//let str = String(result.reversed())
//print(str)
//
//
//
//
//
//
//
//
//
//
//
//
//
///*
//func makeEqualLength(str1: inout String, str2: inout String) {
//    if str1.count != str2.count {
//        if str1.count > str2.count {
//            let extralength = (str1.count - str2.count) - 1
//            for _ in 0...extralength {
//                str2 = "0" + str2
//            }
//        }
//        else {
//            let extralength = (str2.count - str1.count) - 1
//            for _ in 0...extralength {
//                str1 = "0" + str1
//            }
//        }
//    }
//}
//
//func addTwoCharacters(char1: Character, char2: Character) -> String {
//    var value1 = Int(String(char1)) ?? 0
//    var value2 = Int(String(char2)) ?? 0
//
//    while value2 != 0 {
//        let carry = value1 & value2
//        print("Value1 binary - \(String(value1, radix: 2, uppercase: false)), Value2 binary - \(String(value2, radix: 2, uppercase: false))")
//        print("Carry binary - \(String(carry, radix: 2, uppercase: false))")
//        value1 = value1 ^ value2
//        print("XOR binary - \(String(value1, radix: 2, uppercase: false))")
//
//        value2 = carry << 1
//    }
//        return (String(value1))
//}
//
//var result = String()
//makeEqualLength(str1: &a, str2: &b)
//var previousCarry = 0
//var resultChar : String
//for index in a.indices.reversed() {
//    print(index)
//    resultChar = addTwoCharacters(char1: a[index], char2: b[index])
//    if resultChar.count > 1 {
//        let nextIndex = resultChar.index(after: index)
//        a[nextIndex] = addTwoCharacters(value1: resultChar.first, value2: a[nextIndex])
//    }
//    result = [resultChar.last!] + result
//}
//print(Int(result)!)
//*/
//
//
