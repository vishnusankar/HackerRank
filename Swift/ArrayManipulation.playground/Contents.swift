//: Playground - noun: a place where people can play

import UIKit


//let inputFirstLine = readLine()!.components(separatedBy:" ")
let inputFirstLine = "40 30".components(separatedBy:" ")

let n = Int(inputFirstLine[0])!
let m = Int(inputFirstLine[1])!
var a : [Int] = [Int](repeating: 0, count: n+1)

// read array and map the elements to integer
//let secondInputLine = readLine()!.components(separatedBy: " ")
let secondInputLine = "29 40 787"
let thirdInputLine = "9 26 219"
let fourthInputLine = "21 31 214"
let secondInputLine1 = "8 22 719"
let thirdInputLine1 = "15 23 102"
let fourthInputLine1 = "11 24 83"
let secondInputLine2 = "14 22 321"
let thirdInputLine2 = "5 22 300"
let fourthInputLine2 = "11 30 832"
let secondInputLine3 = "5 25 29"
let thirdInputLine3 = "16 24 577"
let fourthInputLine3 = "3 10 905"
let secondInputLine4 = "15 22 335"
let thirdInputLine4 = "29 35 254"
let fourthInputLine4 = "9 20 20"
let secondInputLine5 = "33 34 351"
let thirdInputLine5 = "30 38 564"
let fourthInputLine5 = "11 31 969"
let secondInputLine6 = "3 32 11"
let thirdInputLine6 = "29 35 267"
let fourthInputLine6 = "4 24 531"
let secondInputLine7 = "1 38 892"
let thirdInputLine7 = "12 18 825"
let fourthInputLine7 = "25 32 99"
let secondInputLine8 = "3 39 107"
let thirdInputLine8 = "12 37 131"
let fourthInputLine8 = "3 26 640"
let secondInputLine9 = "8 39 483"
let thirdInputLine9 = "8 11 194"
let fourthInputLine9 = "12 37 502"

let inputStrArray :[String] = [secondInputLine,thirdInputLine,fourthInputLine,secondInputLine1,thirdInputLine1,fourthInputLine1,secondInputLine2,thirdInputLine2,fourthInputLine2,secondInputLine3,thirdInputLine3,fourthInputLine3,secondInputLine4,thirdInputLine4,fourthInputLine4,secondInputLine5,thirdInputLine5,fourthInputLine5,secondInputLine6,thirdInputLine6,fourthInputLine6,secondInputLine7,thirdInputLine7,fourthInputLine7,secondInputLine8,thirdInputLine8,fourthInputLine8,secondInputLine9,thirdInputLine9,fourthInputLine9]

let sum : Int = 0
var X : Int = 0
var max : Int64 = 0
var result : [Int] = [Int](repeating:0, count:n+1)
var highestValue : Int64 = 0
//print(NSDate.timeIntervalSinceReferenceDate)
for i in 0..<m {
    let inputValueStr = inputStrArray[i].components(separatedBy: " ")
    let p = Int(inputValueStr[0])!
    let q = Int(inputValueStr[1])!
    let sum : Int64 = Int64(inputValueStr[2])!
    if sum > highestValue {
        highestValue = sum
    }
    for j in (i+1)..<m {
        let nextIndex = j
        if nextIndex < m && j != i {
            let nextinputValueStr = inputStrArray[nextIndex].components(separatedBy: " ")
            let nextp = Int(nextinputValueStr[0])!
            let nextq = Int(nextinputValueStr[1])!
            let nextsum = Int(nextinputValueStr[2])!

            if nextp == p || nextp == q || nextq == p || nextq == q || (nextp >= p && nextp <= q) || (nextq >= p && nextq <= p) || (nextp < p && nextq > q) {
                if max == 0 {
                    max = sum
                }else {
                    max += sum
                }
            }
        }
    }
}
if max == 0 {
    max = highestValue
}
//print(NSDate.timeIntervalSinceReferenceDate)
//// Online solution
//    a[p] = a[p] + sum
//    if ((q+1)<=n) {
//        a[q+1] = a[q+1] - sum
//    }
//}
////
//for i in 0..<n {
//    X = X+a[i]
//    if max < X {
//        max = X
//    }
//}
//print(NSDate.timeIntervalSinceReferenceDate)

print(max)



