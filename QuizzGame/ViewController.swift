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
    let quiz = [
        "Four + 2 is Equal To 6",
        "Four + 4 is Equal To 8",
        "Four + 6 is Equal To 10",
        "Four + 8 is Equal To 12"
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIQuestion()
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1;
    }
    
    func updateUIQuestion() {
        questionLabel.text = quiz[questionNumber];
    }

}

