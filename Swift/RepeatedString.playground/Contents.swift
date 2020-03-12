import UIKit

var str = "ababa"

print(repeatedString(s: str, n: 3))

func repeatedString(s: String, n: Int) -> Int {
    //Get count of "a" character in string as 'repeatedCharCount'
    //Divide the string count with n value so that we get number of time repeated whole string as 'repeatedCount'
    //Module the string count with n value to get remaining characters need to include for counting
        //Check that remainig characters having "a" and count number of "a"'s and include it in 'totoalAcharacterCount'
    //totoalAcharacterCount = repeatedCharCount * repeatedCount
    //Check
    let strCount = s.count
    let charA = "a"
    var totoalAcharacterCount = 0
    let repeatedAcharacterCount = s.filter {String($0) == charA}.count
    
    if n <= strCount {
        if n < strCount {
            let subStr = s.getSubString(noOfChar: n)
            return subStr.filter {String($0) == charA}.count
        }
        return repeatedAcharacterCount
    }
    let repeatedCount = n / strCount
    let remainingCharacters = n % strCount
    totoalAcharacterCount = repeatedAcharacterCount * repeatedCount
    if remainingCharacters > 0 {
//        let lastIndex = s.index(s.startIndex, offsetBy: remainingCharacters-1)
        let repeatedAcharacterOnRemainingCharaters = s.getSubString(noOfChar: remainingCharacters-1)
        let repeatedAcharacterCountOnRemainingCharaters = (repeatedAcharacterOnRemainingCharaters.filter {String($0) == charA}).count
        totoalAcharacterCount += repeatedAcharacterCountOnRemainingCharaters
    }
    return totoalAcharacterCount
}

extension String {
    func getSubString(noOfChar: Int) -> String {
        let lastIndex = self.index(self.startIndex, offsetBy: noOfChar)
        let repeatedAcharacterOnRemainingCharaters = self[self.startIndex...lastIndex]
        return String(repeatedAcharacterOnRemainingCharaters)
    }
}
