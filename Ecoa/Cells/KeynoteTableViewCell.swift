//
//  KeynoteTableViewCell.swift
//  Ecoa
//
//  Created by Orlando Amorim on 05/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

class KeynoteTableViewCell: UITableViewCell {

    @IBOutlet weak fileprivate var keynoteTitleLabel: UILabel!
    @IBOutlet weak fileprivate var keynoteDetailLabel: UILabel!
    @IBOutlet weak fileprivate var keynoteImageView: UIImageView!
    
    fileprivate var gradientLayer = CAGradientLayer()
    fileprivate let gradientView = UIView(frame: CGRect.zero)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = gradientView.bounds
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    fileprivate func setupUI() {
        backgroundColor = UIColor.ecoa.tabBar.background
        keynoteTitleLabel.textColor = UIColor.ecoa.keynoteCell.titleLabel
        keynoteDetailLabel.textColor = UIColor.ecoa.keynoteCell.detailLabel

        addGradientOverlay()
    }
    
    fileprivate func addGradientOverlay(){
        
        insertSubview(gradientView, aboveSubview: keynoteImageView)
        gradientLayer.frame = gradientView.bounds
        
        let opaqueBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        let transparentBlackColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.0).cgColor
        gradientLayer.colors = [transparentBlackColor, opaqueBlackColor]
        
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
        
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        
        insertSubview(gradientView, aboveSubview: keynoteImageView)
        
        let topConstraint = NSLayoutConstraint(item: gradientView, attribute: .top, relatedBy: .equal, toItem: keynoteTitleLabel, attribute: .top, multiplier: 1, constant: -60)
        
        let leftConstraint = NSLayoutConstraint(item: gradientView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 0)
        
        let rightConstraint = NSLayoutConstraint(item: gradientView, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 0)
        
        let bottomConstraint = NSLayoutConstraint(item: gradientView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        
        addConstraints([topConstraint, leftConstraint, rightConstraint, bottomConstraint])
    }
    
}
