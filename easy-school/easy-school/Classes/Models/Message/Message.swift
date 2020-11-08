//
//  Message.swift
//  easy-school
//
//  Created by Александр on 08.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class Message {

    var name: String
    var date: Date
    var user: User
    
    init(name: String, user: User) {
        self.name = name
        self.user = user
        self.date = Date()
    }
    
    class func test() -> Message {
        let user = User.init(name: "Тест Бот", avatar: #imageLiteral(resourceName: "myAvatar"))
        let message = Message.init(name: "Добро пожаловать в чат! Здесь вы можете общаться с игроками и искать шпиона", user: user)
        
        return message
    }
    
}
