//
//  UIColor+Extensions.swift
//  Ecoa
//
//  Created by Orlando Amorim on 05/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit
import SwiftColor

extension UIColor {
    struct ecoa {
        struct tabBar {
            static let background   = Color(byteRed: 1, green: 17, blue: 50)
            static let tint         = Color(byteRed: 118, green: 167, blue: 229)
        }
    }
}

extension UITabBarController {
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return selectedViewController
    }
}

extension UINavigationController {
    open override var childViewControllerForStatusBarStyle: UIViewController? {
        return visibleViewController
    }
}
