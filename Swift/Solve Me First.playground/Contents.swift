//: Playground - noun: a place where people can play

import UIKit

typealias Byte = UInt8

func toByteArray<T>(value : inout T) -> [Byte] {
    return withUnsafePointer(&value) {
        Array(UnsafeBufferPointer(start: UnsafePointer<Byte>($0), count: sizeof(T)))
    }
}
// read integers line by line
//var a = Int(readLine()!)!
//var b = Int(readLine()!)!

var a = 12
var b = 10

// Hint: Type print(a + b) below
var stringA = String(a)
var stringB = String(b)

//struct DataPacket {
//    var dataSets = [Int](repeating: 0, count: 14)
//
//    func toCArray() -> [UInt8] {
//        var result = [UInt8](repeating: 0, count: 20)
//        var index = 0
//        var bitsRemaining = 8
//        var offset = 0
//
//        for value in self.dataSets {
//            offset = 10
//
//            while offset >= 0 {
//                let mask = 1 << offset
//                print("offset = \(offset), mask = \(mask)")
//                let bit = ((value & mask) >> offset) << (bitsRemaining - 1)
//                print("bit = \(bit)")
//                result[index] |= UInt8(bit)
//
//                offset -= 1
//                bitsRemaining -= 1
//                if bitsRemaining == 0 {
//                    index += 1
//                    bitsRemaining = 8
//                }
//            }
//        }
//
//        return result
//    }
//}
//
//var packet = DataPacket()
//packet.dataSets[0] = 2
//packet.dataSets[1] = 1
//
//// etc...
//
//let arr = packet.toCArray()
//func convertSingleDigitNumberToCharacter(singleDigitNumber : Int) -> Character? {
//    if let unicodescalarvalue = UnicodeScalar(singleDigitNumber + 48) {
//        return Character(unicodescalarvalue)
//    }else {
//        return nil
//    }
//}

//print(NSDate())
//if stringA.count > stringB.count {
//    let extraCharacterCount = stringA.count - stringB.count
//    for _ in 0..<extraCharacterCount {
//        stringB = ["0"] + stringB
//    }
//}
//else if stringA.count < stringB.count {
//    let extraCharacterCount = stringB.count - stringA.count
//    for _ in 0..<extraCharacterCount {
//        stringA = ["0"] + stringA
//    }
//}
//
//var outputResult : String = String()
//var reminder : Int = 0
//var totalValue : Int = 0
//for index in 0..<stringA.count {
//
//    let currentIndex = stringA.index(stringA.startIndex, offsetBy:index)
//    let char1 = stringA[currentIndex]
//    let char2 = stringB[currentIndex]
//
//    let str1 = String(char1)
//    let str2 = String(char2)
//
//    let value1 = Int(str1)! + reminder
//    let value2 = Int(str2)!
//
//    //Previous reminder & totalValue used above so resetting it here
//    reminder = 0
//    totalValue = 0
//    totalValue = (value1 + value2)
//
//    if ((value1 + value2) > 9) {
//        reminder = (totalValue / 10)
//        totalValue = totalValue%10
//        outputResult.append(convertSingleDigitNumberToCharacter(singleDigitNumber: totalValue)!)
//    }
//    else {
//        outputResult.append(convertSingleDigitNumberToCharacter(singleDigitNumber: totalValue)!)
//    }
//
//}
//
//func intToByteArray(value:Int) -> [UInt8] {
//    var value = value
//    let valueByteArray = withUnsafePointer(to: &value) {
//        Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: MemoryLayout.size(ofValue: value)))
//    }
//    print(valueByteArray.reversed())
//}
//print(NSDate())
//
