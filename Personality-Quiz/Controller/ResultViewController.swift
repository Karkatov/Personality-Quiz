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
    
    //create alert
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "Ура, вы прошли тест!", message: "Хотите повторить?", preferredStyle: .alert)
        
        //create button
        let actionYes = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let actionNo = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        alertController.addAction(actionYes)
        alertController.addAction(actionNo)
        
        self.present(alertController, animated: true, completion: nil)
    }

}
