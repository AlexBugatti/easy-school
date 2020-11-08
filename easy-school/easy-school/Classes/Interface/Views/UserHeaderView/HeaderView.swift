//
//  HeaderView.swift
//  easy-school
//
//  Created by Александр on 08.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class HeaderView: NibView {

    var didTapSetting: (()->())?
    
    @IBOutlet weak var stLabel: UILabel!
    @IBOutlet weak var containerView: UIView! {
        didSet {
            self.containerView.layer.cornerRadius = 20
            self.containerView.layer.masksToBounds = true
            self.containerView.layer.borderWidth = 5
        }
    }
    @IBOutlet weak var headerView: UIView! {
        didSet {
            self.headerView.layer.cornerRadius = 20
            self.headerView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView! {
        didSet {
            self.avatarView.layer.cornerRadius = 10
            self.avatarView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var coverView: UIImageView!
    
    func configure(language: Language) {
        self.headerView.backgroundColor = language.mainColor
        self.headerView.layer.borderColor = language.mainColor.cgColor
        self.containerView.layer.borderColor = language.extraColor.cgColor
        self.coverView.image = language.cover
    }
    
    @IBAction func onDidSetting(_ sender: Any) {
        self.didTapSetting?()
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
