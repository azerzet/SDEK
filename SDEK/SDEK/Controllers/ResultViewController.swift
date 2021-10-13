//
//  ResultViewController.swift
//  SDEK
//
//  Created by Ислам Садыгов on 11.10.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: String?

    @IBOutlet weak var resultLabel: UILabel!
   

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = result! + String(" Рублей")
    }
     
    
    @IBAction func recalculate(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
