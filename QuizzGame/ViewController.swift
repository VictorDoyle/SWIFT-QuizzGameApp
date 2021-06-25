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
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
              Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
              Question(q: "Google was originally called 'Backrub'.", a: "True"),
              Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
              Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
              Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
              Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIQuestion()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //equate it to the string true or false
        let verifiedAnswer = quizzQuestions[questionNumber].answer
        
        if userAnswer == verifiedAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        if quizzQuestions.count > questionNumber + 1 {
            questionNumber += 1;
        } else {
            questionNumber = 0;
        }
      
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUIQuestion), userInfo: nil, repeats: false);

    }
    
    @objc func updateUIQuestion() {
        questionLabel.text = quizzQuestions[questionNumber].text;
        trueButton.backgroundColor = UIColor.clear;
        falseButton.backgroundColor = UIColor.clear;
    }

}

