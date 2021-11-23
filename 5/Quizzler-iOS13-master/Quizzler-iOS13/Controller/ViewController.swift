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

    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else {return}
        let isCorrect = quizBrain.checkAnswer(userAnswer)
        if isCorrect {
            print ("correct answer")
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
            print ("wrong")
        }
        quizBrain.loadNextQuestion()

        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false )
    }

    @objc func updateUI () {
        progressBar.progress = Float(quizBrain.questionNumber+1)/Float(quizBrain.quiz.count)
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }


}

