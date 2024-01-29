//
//  UIColorExtension.swift
//  Demo_1
//
//  Created by lê thạch on 29/01/2024.
//

import UIKit
public extension UIColor {
    convenience init(rgb: Int) {
        self.init(
            red: CGFloat((rgb >> 16) & 0xFF),
            green: CGFloat((rgb >> 8) & 0xFF),
            blue: CGFloat(rgb & 0xFF),
            alpha: 1
        )
    }
}
