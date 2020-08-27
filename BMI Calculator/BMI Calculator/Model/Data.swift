//
//  Data.swift
//  BMI Calculator
//
//  Created by Burak on 27.08.2020.
//

import Foundation

struct Data {
    let quoteBase = [
        Quote(t: "Take care of your body. It’s the only place you have to live."),
        Quote(t: "Health is a relationship between you and your body."),
        Quote(t: "Your diet is a bank account. Good food choices are good investments."),
        Quote(t: "Don't eat anything your grandmother wouldn't recognize as food."),
        Quote(t: "A healthy diet is a solution to many of our health-care problems. It's the most important solution."),
        Quote(t: "The healthy man is the thin man. But you don't need to go hungry for it: Remove the flours, starches and sugars; that's all."),
        Quote(t: "If you keep good food in your fridge, you will eat good food."),
        Quote(t: "Eat breakfast like a king, lunch like a prince, and dinner like a pauper."),
        Quote(t: "Love yourself enough to live a healthy lifestyle.")
    ]
    
    let categoryBase = [
        Category(c: "Severe Thinness"),
        Category(c: "Moderate Thinness"),
        Category(c: "Mild Thinness"),
        Category(c: "Normal"),
        Category(c: "Overweight"),
        Category(c: "Obese Class I"),
        Category(c: "Obese Class II"),
        Category(c: "Obese Class III")
    ]
    
    let heightData = [
        ["4 ft.","5 ft.","6 ft."],
        ["1 in.","2 in.","3 in.","4 in.","5 in.","6 in.","7 in.","8 in.","9 in.","10 in.","11 in."]
    ]
    
}
