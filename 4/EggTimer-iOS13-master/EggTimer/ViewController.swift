//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* enum eggType: Int {
        case soft = 5
        case medium = 7
        case hard = 12
    } */

    let eggTimes = ["Soft" : 300, "Medium" : 420, "Hard" : 720]
    var timeMissing: Int? = nil
    var timer: Timer?

    
    @IBAction func hardnessSelected (sender: UIButton) {
        guard let hardness = sender.currentTitle else {return}
        guard let timeNeeded = eggTimes[hardness] else {return}
        if timeMissing == nil {
            timeMissing = timeNeeded
            createNewTimer()
        }
        else if timeMissing! <= 0 {
            timeMissing = timeNeeded
            createNewTimer()
        }
    }

        func createNewTimer() {
            self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
                if self.timeMissing! > 0 {
                        print ("\(self.timeMissing!) seconds")
                        self.timeMissing! -= 1
                    } else {
                        if let timer = self.timer {
                            timer.invalidate()
                            self.timer = nil
                        }
                    }
            }



        //print(timeNeeded)

        /* switch hardness {
        case "Soft":
            print(eggTimes.soft.rawValue)
            break
        case "Medium":
            print(eggType.medium.rawValue)
            break
        case "Hard":
            print(eggType.hard.rawValue)
            break
        default:
            print("Invalid option")
            break
        } */

    }

}
