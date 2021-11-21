//
//  QuestionViewController.swift
//  Personality-Quiz
//
//  Created by Duxxless Macbook on 20.11.2021.
//

import UIKit

class QuestionViewController: UIViewController {
   
    // MARK: - IB Outlets
    
    // Single
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    
    //Multiple
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwithces: [UISwitch]!
    
    //Range
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet weak var rangedSlider: UISlider!
    
    //ProgressView
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    // MARK: - Private Properties
    private let question = Question.getQuestions()
    private var questionIndex = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    // MARK: - Private Methods
    
    //Update user interface
    private func updateUI() {
        //hide everything
        for stackViews in [singleStackView, multipleStackView, rangedStackView] {
            stackViews?.isHidden = true
        }
        // get current question
        let currentQuestion = question[questionIndex]
        
        // set current question for question label
        questionLabel.text = currentQuestion.text
       
        // Calculate progress
        let totalProgress = Float(questionIndex / question.count)
        
        // Set progress for question progress view
        questionProgressView.setProgress(totalProgress, animated: true)
        
        
        title = "Вопрос № \(questionIndex + 1) из \(question.count)"
    }
    
}
