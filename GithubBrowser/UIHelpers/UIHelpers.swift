//
//  UIHelpers.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/8/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit

extension UITextField {
    func underline(color: UIColor) {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
