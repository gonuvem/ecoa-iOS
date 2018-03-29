//
//  EcoaTheme.swift
//  Ecoa
//
//  Created by Orlando Amorim on 05/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

enum EcoaTheme {
    static func applyAppearanceDefaults() {
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().textColor = UIColor.white
        
//        UINavigationBar.appearance().barStyle = UIBarStyle.blackTranslucent
        UINavigationBar.appearance().barTintColor = UIColor.ecoa.tabBar.background
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = true
        
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor.black
        
        UITabBar.appearance().tintColor = UIColor.ecoa.tabBar.tint
        UITabBar.appearance().backgroundColor =  UIColor.ecoa.tabBar.background
        UITabBar.appearance().barTintColor =  UIColor.ecoa.tabBar.background
    }
}
