//: Playground - noun: a place where people can play

import UIKit

func add(value1:Int8, value2:Int8) -> Int8 {
    var mvalue1 = value1
    var mvalue2 = value2
    
    while mvalue2 != 0 {
        let carry: Int8 = mvalue1 & mvalue2
        
        mvalue1 = mvalue1 ^ mvalue2
        
        mvalue2 = carry << 1
    }
    return mvalue1
}


var str = "Hello, playground"
var a : Int8 = Int8.max
var b : Int8 = 7
let sum = add(value1:a,value2:b)


