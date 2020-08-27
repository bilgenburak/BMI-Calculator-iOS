//
//  ThirdViewController.swift
//  BMI Calculator
//
//  Created by Burak on 22.08.2020.
//

import UIKit

class metricVC: UIViewController {
    @IBOutlet var heightSlide: UISlider!
    @IBOutlet var weightSlide: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var buttonStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle.layer.cornerRadius = 25
        self.weightSlide.value = (85);
        self.heightSlide.value = (1.7);
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "Height | \(height) cm"
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.1f", sender.value)
        weightLabel.text = "Weight | \(weight) kg"
    }

     @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlide.value
        let weight = weightSlide.value
        BMI = Double(weight / (height * height))
        self.performSegue(withIdentifier: "toResultPage", sender: self)
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultPage" {
            let destinationVC2 = segue.destination as! resultVC
            destinationVC2.bmiValue = BMI
        }
    }
 }
