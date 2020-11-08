//
//  User.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class User {

    var id: Int = Int.random(in: 1...1000)
    var name: String
    var avatar: UIImage
    
    init(name: String, avatar: UIImage) {
        self.name = name
        self.avatar = avatar
    }
    
    static var current: User {
        let alex = User(name: "Alexander", avatar: #imageLiteral(resourceName: "avatar"))
        
        return alex
    }
    
}
