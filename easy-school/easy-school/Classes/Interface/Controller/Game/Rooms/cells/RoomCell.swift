//
//  RoomCell.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class RoomCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var coverBackgroudImage: UIImageView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var placeLabel: UILabel! {
        didSet {
            self.placeLabel.layer.cornerRadius = 4
            self.placeLabel.layer.masksToBounds = true
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    func configure(_ room: Room) {
        self.titleLabel.text = room.name
        self.coverImage.tintColor = room.lang.mainColor
        self.coverBackgroudImage.tintColor = room.lang.extraColor
        self.flagView.image = room.lang.flag
        self.placeLabel.text = " \(room.maxUsers - room.users.count) мест "
    }
    
}
