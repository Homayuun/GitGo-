//
//  RoundedTF.swift
//  MyVersi
//
//  Created by Homayun on 1/20/1400 AP.
//

import UIKit

class RoundedTF: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        let color: UIColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: color])
        attributedPlaceholder = placeholder
        backgroundColor = #colorLiteral(red: 0.09359427256, green: 0.1716707572, blue: 0.2204461917, alpha: 1)
        layer.cornerRadius = 10
        layer.borderWidth = 0.0
        layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
}
