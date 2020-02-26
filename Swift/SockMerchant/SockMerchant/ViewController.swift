//
//  ViewController.swift
//  SockMerchant
//
//  Created by vishnusankar on 26/02/20.
//  Copyright © 2020 vishnusankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var matchDict = [Int: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
    }

    func addNumberInDictionary(value: Int) {
        //If
        if var count = matchDict[value] {
            count += 1
            matchDict[value] = count
        }else {
            matchDict[value] = 1
        }
    }

    func getTotalPairCount() -> Int {
        var totalPairCount = 0
        for (_, count) in matchDict {
            if (count % 2) == 0 {
                totalPairCount += (count/2)
            }else {
                let evenNumber = count - 1
                totalPairCount += (evenNumber/2)
            }
        }
        return totalPairCount
    }

    func sockMerchant(n: Int, ar: [Int]) -> Int {
        /*
         1. Create set from Array
         2. compare set with array and count if match found
         3. return matched count
         */
        
        /*
         1. Iterate given array and assign the value as key in dictionary and put the count as value in dictionary
         2. If the count is in odd number then minus 1 and the result the count as matched
         */
        print(ar)
        for value in ar {
            addNumberInDictionary(value: value)
        }
        return getTotalPairCount()
    }
}

