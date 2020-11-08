//
//  PlayerCell.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class PlayerCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            self.titleLabel.layer.cornerRadius = 6
            self.titleLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var logoView: UIImageView! {
        didSet {
            self.logoView.layer.cornerRadius = self.logoView.frame.height / 4
            self.logoView.layer.masksToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(user: User) {
        self.titleLabel.text = user.name
        self.logoView.image = user.avatar
    }

}
