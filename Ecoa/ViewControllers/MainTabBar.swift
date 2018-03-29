//
//  MainTabBar.swift
//  Ecoa
//
//  Created by Orlando Amorim on 09/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // iOS 11: puts the titles to the right of image for horizontal size class regular. Only want offset when compact.
        // iOS 9 & 10: always puts titles under the image. Always want offset.
        var verticalOffset: CGFloat = 6.0
        
        if #available(iOS 11.0, *), traitCollection.horizontalSizeClass == .regular {
            verticalOffset = 0.0
        }
        
        let imageInset = UIEdgeInsets(
            top: verticalOffset,
            left: 0.0,
            bottom: -verticalOffset,
            right: 0.0
        )
        
        for tabBarItem in items ?? [] {
            tabBarItem.title = ""
            tabBarItem.imageInsets = imageInset
        }
    }
}
