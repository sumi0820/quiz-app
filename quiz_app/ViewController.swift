//
//  ViewController.swift
//  quiz_app
//
//  Created by Sumiya Ushiro on 19/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quizes = [
        ["One + Two is equal to Three", "True"],
        ["Three + Four is equal to Six", "False"],
        ["Five + Six is equal to Eleven", "True"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle ?? "Error"
        let actualAnswer = quizes[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Wrong...")
        }
        
        if questionNumber + 1 < quizes.count{
            questionNumber += 1
        } else {
            questionNumber = 0

        }
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizes[questionNumber][0]
        
    }
}

