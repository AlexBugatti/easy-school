//
//  MessageCell.swift
//  easy-school
//
//  Created by Александр on 08.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var logoView: UIImageView! {
        didSet {
            self.logoView.layer.cornerRadius = self.logoView.frame.height / 2
            self.logoView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ message: Message) {
        self.logoView.image = message.user.avatar
        self.titleLabel.text = message.user.name
        self.descriptionLabel.text = message.name
    }
    
}
