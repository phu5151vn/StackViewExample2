//
//  UIStackView+Extension.swift
//  StackViewExample2
//
//  Created by phu.nguyen5 on 29/08/2022.
//

import Foundation
import UIKit

extension UIStackView {
    func changeBackgroundColor(color:UIColor) {
        let backgroundLayer = CAShapeLayer()
        self.layer.insertSublayer(backgroundLayer, at: 0)
        backgroundLayer.path = UIBezierPath(rect: self.bounds).cgPath
        backgroundLayer.fillColor = color.cgColor
    }
}
