//: Playground - noun: a place where people can play

import UIKit

extension Array  where Generator.Element == String {
    
    func sum() -> String {
        var sumValue : String = ""
        for strValue in self {
            let value = Int(strValue as! String) ?? 0
            
            
        }
        return " "
    }
}

//Float & Double & Int &

let n = 6
var str = "1 2 3 4 10 11".components(separatedBy: " ").map { Int($0)! }
str.sum()


