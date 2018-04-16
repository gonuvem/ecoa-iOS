//
//  SponsorCollectionViewCell.swift
//  Ecoa
//
//  Created by Orlando Amorim on 02/04/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

class SponsorCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var sponsorImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    fileprivate func setupUI() {
        //** Adding Border **//
        layer.cornerRadius = 2
        layer.masksToBounds = true
        layer.borderWidth = 1
        
        //** Adding backgroundColor **//
        backgroundColor = UIColor.white
        
        sponsorImageView.contentMode = .scaleAspectFill
    }
    
}
