//
//  QuestionViewController.swift
//  Personality-Quiz
//
//  Created by Duxxless on 20.11.2021.
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
    private var  answerChosen: [Answer] = []
    private var currentAnswers: [Answer] {
        question[questionIndex].answers
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}
    


    // MARK: - Private
extension QuestionViewController {
    
    //Update user interface
    private func updateUI() {
        // Hide everything
        for stackViews in [singleStackView, multipleStackView, rangedStackView] {
            stackViews?.isHidden = true
        }
        // Get current question
        let currentQuestion = question[questionIndex]
        
        // Set current question for question label
        questionLabel.text = currentQuestion.text
        
        // Calculate progress
        let totalProgress = Float(questionIndex / question.count)
        
        // Set progress for question progress view
        questionProgressView.setProgress(totalProgress, animated: true)
        
        
        title = "Вопрос № \(questionIndex + 1) из \(question.count)"
    
        showCurrentStackView(for: currentQuestion.type)
    }
    
    
    
    private func showCurrentStackView(for type: ResponseType) {
        switch type {
        case .single : showSingleStackView(with: currentAnswers)
            break
        case .multiple : showMultipleStackView(with: currentAnswers)
            break
        case .ranged : showRangeStackView(with: currentAnswers)
            break
        }
    }

    private func showSingleStackView(with answers: [Answer]) {
        singleStackView.isHidden = false
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.text, for: .normal)
            
        }
    }

    private func showMultipleStackView(with answers: [Answer]) {
        multipleStackView.isHidden = false
        
        for (label, answer) in zip(multipleLabels, answers) {
            label.text = answer.text
            
        }
        
    }

    private func showRangeStackView(with answers: [Answer]) {
        rangedStackView.isHidden = false
        
        rangedLabels.first?.text = answers.first?.text
        rangedLabels.last?.text = answers.last?.text
        
    }
}
    
    
    
    
    
