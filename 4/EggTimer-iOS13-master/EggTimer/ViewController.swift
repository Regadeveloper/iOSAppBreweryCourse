//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    enum eggType: Int {
        case soft = 5
        case medium = 7
        case hard = 12
    }
    
    @IBAction func hardnessSelected (sender: UIButton) {
        let hardness = sender.currentTitle ?? "no tiene nombre"

        switch hardness {
        case "Soft":
            print(eggType.soft.rawValue)
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
        }

    }

}
