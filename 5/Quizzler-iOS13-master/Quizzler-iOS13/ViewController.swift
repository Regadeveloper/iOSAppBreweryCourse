//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let quiz = [
        ["You're my creator?", "False"],
        ["You're the player?", "True"],
        ["You're human?", "True"],
        ["This is the last question?", "True"]
    ]

    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        let correctAnswer = quiz[questionNumber] [1]
        if userAnswer == correctAnswer {
            print ("correct answer")
        } else {
            print ("wrong")
        }
        if questionNumber < quiz.count - 1  {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }

    func updateUI () {
        questionLabel.text = quiz[questionNumber][0]
    }


}

