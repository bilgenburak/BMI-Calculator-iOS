//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Burak on 22.08.2020.
//

import UIKit

class unitsVC: UIViewController {
    @IBOutlet weak var buttonStyle: UIButton!
    @IBOutlet weak var cmFT: UISegmentedControl!
    @IBOutlet var mytext: UILabel!
    
    var pageControl = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle.layer.cornerRadius = 25
    }
    
    @IBAction func pageSelection(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            pageControl = true
        }
        if sender.selectedSegmentIndex == 1 {
            pageControl = false
        }
    }
    
    @IBAction func nextButtonSecond(_ sender: UIButton) {
        if pageControl == true {
            self.performSegue(withIdentifier: "toStandardPage", sender: self)
            
        } else {
            self.performSegue(withIdentifier: "toMetricPage", sender: self)
        }
    }	
}
