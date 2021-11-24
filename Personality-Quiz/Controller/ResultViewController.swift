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
        

        self.navigationItem.setHidesBackButton(true, animated: true)
       
    }
    
}
