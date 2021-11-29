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
        showAlert()
    }
    
    private func updateResult() {
        // Add empty dictionary
        var dictionaryOfAnimals: [AnimalType: Int] = [:]
        // create array of type AnimalType
        let animals = answersArray.map { $0.type }
        
        for animal in animals {
            dictionaryOfAnimals[animal] = (dictionaryOfAnimals[animal] ?? 0) + 1
        }
        
        let sortedDictionaryOfAnimals = dictionaryOfAnimals.sorted {$0.value > $1.value }
        guard let mostDictionaryOfAnimal = sortedDictionaryOfAnimals.first?.key else { return }
        
        updateUI(with: mostDictionaryOfAnimal)
        
    }
    
    private func updateUI(with animal: AnimalType) {
        resultAnswerLabel.text = "Вы \(animal.rawValue)"
        resultDefinitionLabel.text = "\(animal.definition)"
    }
    
    // Hide button back
    private func hideBackButton() {
        navigationItem.setHidesBackButton(true, animated: true)
    }
    
    
    
 private func showAlert() {
        let alertController = UIAlertController(title: "Ура, вы прошли тест!", message: "😊", preferredStyle: .alert)
        
        //create button
        
        let actionYes = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(actionYes)
        
        present(alertController, animated: true, completion: nil)
    }

}
