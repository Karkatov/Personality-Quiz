//
//  ResultViewController.swift
//  Personality-Quiz
//
//  Created by Duxxless Macbook on 20.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
 
    // MARK: - IB Outlet
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
   
    // MARK: - Public properties
    
    var answersArray: [Answer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideBackButton()
        updateResult()
    }
    
    private func updateResult() {
        var dictionaryOfAnimals: [AnimalType: Int] = [:]
        var animals = answersArray.map { $0.type }
        for animal in animals {
            dictionaryOfAnimals[animal] = (dictionaryOfAnimals[animal] ?? 0) + 1
        }
    }
    
    
    // Hide butoon back
    private func hideBackButton() {
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    
    
    //create alert
    @IBAction func showAlert() {
        let alertController = UIAlertController(title: "Ура, вы прошли тест!", message: "Хотите повторить?", preferredStyle: .alert)
        
        //create button
        
        let actionYes = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let actionNo = UIAlertAction(title: "No", style: .default, handler: nil)
        
        
        alertController.addAction(actionYes)
        alertController.addAction(actionNo)
        
        
        self.present(alertController, animated: true, completion: nil)
    }

}
