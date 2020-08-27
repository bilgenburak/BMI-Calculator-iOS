//
//  Third2ViewController.swift
//  BMI Calculator
//
//  Created by Burak on 23.08.2020.
//

import UIKit

class standardVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var buttonStyle: UIButton!
    @IBOutlet var heightPicker: UIPickerView!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var heightLabel: UILabel!

    var AppBrain = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weightSlider.value = 185
        self.heightPicker.delegate = self
        self.heightPicker.dataSource = self
        buttonStyle.layer.cornerRadius = 25
        weight = Double(weightSlider.value)
        heightPicker.setValue(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), forKey: "textColor")
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        FT = heightPicker.selectedRow(inComponent: 0)
        IN = heightPicker.selectedRow(inComponent: 1)
        
        heightPick()
        heightLabel.text = "Height | " + String(heightFT) + " ft. " + String(heightIN) + " in."
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        BmiCalculator()
        self.performSegue(withIdentifier: "goToResultPage", sender: self)
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        weight = Double(sender.value)
        weightLabel.text = "Weight | \(String(format: "%.1f", sender.value)) lbs"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return AppBrain.heightData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return AppBrain.heightData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return AppBrain.heightData[component][row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultPage" {
            let destinationVC2 = segue.destination as! resultVC
            destinationVC2.bmiValue = BMI
        }
    }
}
