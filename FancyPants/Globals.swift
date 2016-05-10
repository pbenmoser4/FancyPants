//
//  Globals.swift
//  FancyPants
//
//  Created by Percival Moser on 5/4/16.
//  Copyright © 2016 Percival Moser. All rights reserved.
//

import Foundation
import UIKit

func generateRandomNumberBetween(lower: Double, upper: Double, roundResult: Bool) -> CGFloat {
    let range = upper - lower
    let baseRand = Double(Float(arc4random()) / Float(UINT32_MAX))
    let retNum = lower + (baseRand * range)
    
    return CGFloat(roundResult ? round(retNum) : retNum)
    
}

func generateRandomColor() -> UIColor {
    let color = UIColor.init(red: generateRandomNumberBetween(0.0, upper: 1.0, roundResult: false),
                             green: generateRandomNumberBetween(0.0, upper:1.0, roundResult: false),
                             blue: generateRandomNumberBetween(0.0, upper: 1.0, roundResult: false),
                             alpha: 1.0)
    return color
}