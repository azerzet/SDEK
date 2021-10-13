//
//  ViewController.swift
//  SDEK
//
//  Created by Ислам Садыгов on 05.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var cdekValue = "0.0"

   
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var hightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func hightValue(_ sender: UISlider) {
        hightLabel.text = String(format: "%.1f", sender.value)
    }
    
    
    @IBAction func weightValue(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func result(_ sender: Any) {
        let height = hightSlider.value
        let weight = weightSlider.value
        
        let cdek = height * weight
        cdekValue = String(format: "%.1f", cdek)
        
        self.performSegue(withIdentifier: "goToresult", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "goToresult" {
            let destinationView = segue.destination as! ResultViewController
            destinationView.result = cdekValue
        }
    }  
    
}

