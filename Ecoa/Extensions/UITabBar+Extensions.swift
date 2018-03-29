
//
//  UITabBar+Extensons.swift
//  Ecoa
//
//  Created by Orlando Amorim on 09/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

extension UITabBarController {
    func removeTabbarItemsText() {
        tabBar.items?.forEach {
            $0.title = ""
            $0.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
    }
}
