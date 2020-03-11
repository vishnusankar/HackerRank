//
//  ViewController.swift
//  JumpingOnTheCloud
//
//  Created by vishnusankar on 11/03/20.
//  Copyright © 2020 vishnusankar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.jumpingOnClouds(c: [0, 0, 0, 1, 0, 0]))
    }

    func jumpingOnClouds(c: [Int]) -> Int {
        //while loop until currentIndex not reach the endIndex
        //Check currentindex + 2 step further index value is not equal to "1"
        //  increament the jump count
        //  increament to 2 the currentIndex
        //else
        // increament the jump count
        //  increament to 1 the currentIndex
        
        var isLoopCompleted = false
        var currentIndex = 0
        var jumpCount = 0
        let lastIndex = c.count - 1
        
        while isLoopCompleted != true {
            if currentIndex+2 >= lastIndex {
                jumpCount += 1
                isLoopCompleted = true
                break
            }
            if c[currentIndex + 2] == 0 {
                currentIndex += 2
            } else {
                currentIndex += 1
            }
            jumpCount += 1
            if currentIndex >= lastIndex {
                isLoopCompleted = true
            }
        }
        return jumpCount
    }
}

