//: Playground - noun: a place where people can play

import UIKit

let inputOne = "2 5".components(separatedBy: " ")
let noOfQuery = Int(inputOne[0]) ?? 0
let N = Int(inputOne[1]) ?? 0
var lastAnswer : Int = 0

let maxN = Int(pow((10,5)))
let maxXY = Int(pow((10,9)))
var str : [String] = [String]()
str.reserveCapacity(N)

str.append("1 0 5")
str.append("1 1 7")
str.append("1 0 3")
str.append("2 1 0")
str.append("2 1 1")

var result : [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: N), count: noOfQuery)

if  N > 0 && N < maxN{
    for queryString in str {
//        var str = readLine()?.components(separatedBy:" ")
        let inputStr = queryString.components(separatedBy:" ")
        let quertType = Int(inputStr[0])!
        let x = Int(inputStr[1])!
        let y = Int(inputStr[2])!
        
        if (x >= 0 && x <= maxXY) && (x >= 0 && x <= maxXY) && (y >= 0 && y <= maxXY) && (y >= 0 && y <= maxXY) {
            if quertType == 1 {
                let index = Int(((x ^ lastAnswer) % str.count))
                print(index)
                result[index].append(y)
            }else {
                let index = Int(((x ^ lastAnswer) % str.count))
                print(index)
                lastAnswer = result[index].last ?? 0
                print(lastAnswer)
            }
        }else {
            print("X- \(x), Y - \(y), \(maxXY)")
        }
        
    }
}

