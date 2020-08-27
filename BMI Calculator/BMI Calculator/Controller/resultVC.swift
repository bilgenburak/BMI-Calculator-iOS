//
//  LastViewController.swift
//  BMI Calculator
//
//  Created by Burak on 22.08.2020.
//

import UIKit

class resultVC: UIViewController {
    @IBOutlet var quote: UILabel!
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var category: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet weak var buttonStyle: UIButton!
    
    var bmiValue: Double?
    var appBrain = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle.layer.cornerRadius = 25
        quote.text = quoteSender()
        bmiLabel.text = String(format: "%.1f", bmiValue!)
        category.text = CategoryController(bmiValue: bmiValue!)
    }
    
    @IBAction func tryButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toUnitsPage", sender: self)
    }
}
