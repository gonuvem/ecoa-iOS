//
//  KeynoteTableViewCell.swift
//  Ecoa
//
//  Created by Orlando Amorim on 05/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

class KeynoteTableViewCell: UITableViewCell {

    @IBOutlet weak var keynoteGradientVuew: GradientView!
    @IBOutlet weak var keynoteTitleLabel: UILabel!
    @IBOutlet weak var keynoteDetailLabel: UILabel!
    @IBOutlet weak var keynoteImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    fileprivate func setupUI() {
        backgroundColor = UIColor.ecoa.tabBar.background
    }
    
}
