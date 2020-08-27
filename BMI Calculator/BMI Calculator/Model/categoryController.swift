//
//  categoryController.swift
//  BMI Calculator
//
//  Created by Burak on 27.08.2020.
//

import Foundation

var dataFile = Data()

func quoteSender() -> String {
    return dataFile.quoteBase[Int.random(in: 1...8)].qText
}

func CategoryController(bmiValue: Double) -> String {
    if bmiValue < 16.0  {
        bmiToCategory = 1
    } else if bmiValue >= 16.0 && bmiValue < 17.0 {
        bmiToCategory = 2
    } else if bmiValue >= 17.0 && bmiValue < 18.5 {
        bmiToCategory = 3
    } else if bmiValue >= 18.5 && bmiValue < 25 {
        bmiToCategory = 4
    } else if bmiValue >= 25 && bmiValue < 30 {
        bmiToCategory = 5
    } else if bmiValue >= 30 && bmiValue < 35 {
        bmiToCategory = 6
    } else if bmiValue >= 35 && bmiValue < 40 {
        bmiToCategory = 7
    } else if bmiValue > 40 {
        bmiToCategory = 8
    }
    
    return dataFile.categoryBase[bmiToCategory-1].cText
}
