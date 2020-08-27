//
//  Brain.swift
//  BMI Calculator
//
//  Created by Burak on 24.08.2020.
//

import Foundation

var BMI: Double = 0.0
var weight: Double = 0.0

var heightFT: Int = 4
var heightIN: Int = 1
var bmiToCategory: Int = 0
    
func BmiCalculator() {
    heightPick()
    weight = weight / 2.205
    var lastHeight = Double((heightFT * 12) + heightIN) * 2.54
    lastHeight = lastHeight / 100
    BMI = weight / (lastHeight * lastHeight)
}
