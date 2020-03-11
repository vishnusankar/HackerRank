//
//  ViewController.swift
//  CountingValley
//
//  Created by vishnusankar on 27/02/20.
//  Copyright © 2020 vishnusankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.countingValleys(n: 8, s: "UDDDUDUU"))
    }

    func countingValleys(n: Int, s: String) -> Int {
        /*
         1. Increment the value as 1 when encounter 'U' character
         2. Decrement the value as 1 when encounter 'D' character
         3. If value reached as 0 then increament valleyCount variable
         */
        
        var valleyCount = 0
        var stepCount = 0
        var isHikeUnderSeaLevel = false
        
        for char in s {
            if char == "U" {
                stepCount += 1
            }else {
                stepCount -= 1
            }
            if stepCount < 0 {
                isHikeUnderSeaLevel = true
            }
                
            
            if isHikeUnderSeaLevel && stepCount == 0 {
                valleyCount += 1
                isHikeUnderSeaLevel = false
            }
        }
        
        return valleyCount
    }

}

