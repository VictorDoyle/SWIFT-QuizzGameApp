//
//  ViewController.swift
//  QuizzGame
//
//  Created by Victor Doyle on 6/23/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // base tests and setup before actual question load-in
    var questionNumber = 0;
    
    let quizzQuestions = [
        ["Paris is the capital of France", "True"],
        ["2+2 is equal to 4", "True"],
        ["Steve Jobs Invented Linux", "False"],
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIQuestion()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //equate it to the string true or false
        let verifiedAnswer = quizzQuestions[questionNumber][1]
        
        if userAnswer == verifiedAnswer {
            print("Right Answer")
        } else {
            print("Wrong Answer")
        }
        if quizzQuestions.count > questionNumber + 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
      
        updateUIQuestion()
    }
    
    func updateUIQuestion() {
        questionLabel.text = quizzQuestions[questionNumber][0];
    }

}

