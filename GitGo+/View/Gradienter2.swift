//
//  Gradienter.swift
//  Exer 2-4: Gradients
//
//  Created by Homayun on 12/16/1397 AP.
//  Copyright © 1397 AP Homayun. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackGround(colorOne: UIColor , colorTwo: UIColor, colorThree: UIColor){
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor,colorThree.cgColor]
    gradientLayer.cornerRadius = 10.0
    gradientLayer.locations = [0.01,0.0,0.9]
    gradientLayer.startPoint = CGPoint(x: 1.0 , y: 1.0)
    gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
    layer.insertSublayer(gradientLayer, at: 0)
    }
}
