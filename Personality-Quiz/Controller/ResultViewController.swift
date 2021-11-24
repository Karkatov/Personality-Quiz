//
//  ResultViewController.swift
//  Personality-Quiz
//
//  Created by Duxxless Macbook on 20.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
 
    var answersArray: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideBackButton()
        calculateAnswer()    }
    
   
    private func hideBackButton() {
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    private func calculateAnswer() {
        
        var countDog = 0
        var countCat = 0
        var countRabbit = 0
        var countTurtle = 0
        
        
        for oneAnswer in answersArray {
            switch oneAnswer.type {
            case .dog : countDog += 1
            case .cat : countCat += 1
            case .rabbit : countRabbit += 1
            case .turtle : countTurtle += 1
            }
            
            
            
                
            
        }
    }
    
    
    
}
