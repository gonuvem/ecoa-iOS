//
//  InfoViewController.swift
//  Ecoa
//
//  Created by Orlando Amorim on 15/04/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak fileprivate var logoImageView: UIImageView!
    @IBOutlet weak fileprivate var detailLabel: UILabel!
    @IBOutlet weak fileprivate var developedByLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setupUI() {
        //self.title = Ecoa.localizable.info.title.localized
        self.navigationController?.presentTransparentNavigationBar()
        
        self.logoImageView.image = Ecoa.images.ecoa.image
        self.detailLabel.text = Ecoa.localizable.info.detail.localized
        self.developedByLabel.text = "\(Ecoa.localizable.info.developedBy.localized) \n \(Ecoa.localizable.info.copyright.localized)"
        
        self.detailLabel.numberOfLines = 10
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
