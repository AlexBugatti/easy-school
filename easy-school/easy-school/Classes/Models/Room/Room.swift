//
//  Room.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import Foundation

class Room {
    
    var createAt: Date = Date()
    var id = Int.random(in: 0...1000)
    
    var name: String
    var lang: Language
    var users: [User] = []
    var maxUsers: Int
    
    init(name: String, lang: Language, maxUsers: Int = 12) {
        self.name = name
        self.lang = lang
        self.maxUsers = maxUsers
    }
    
    static func testEnglishRoom() -> Room {
        
        let diego = User(name: "Diego", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let max = User(name: "Max", avatar: #imageLiteral(resourceName: "myAvatar (9)"))
        let emma = User(name: "Emma", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        let julia = User(name: "Julia", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        
        let room = Room(name: "English Room 235", lang: Language.en)
        room.users = [diego, max, emma, julia]
        
        return room
    }
    
    static func testSpanishRoom() -> Room {
        
        let diego = User(name: "Diego", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let alfredo = User(name: "Alfredo", avatar: #imageLiteral(resourceName: "myAvatar (5)"))
        let clara = User(name: "Clara", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        let adela = User(name: "Adela", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        let franco = User(name: "Franco", avatar: #imageLiteral(resourceName: "myAvatar (8)"))
        let hugo = User(name: "Hugo", avatar: #imageLiteral(resourceName: "myAvatar (3)"))
        let irma = User(name: "Irma", avatar: #imageLiteral(resourceName: "myAvatar (8)"))
        let ivon = User(name: "Ivon", avatar: #imageLiteral(resourceName: "myAvatar (2)"))
        let julia = User(name: "Julia", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        let laura = User(name: "Laura", avatar: #imageLiteral(resourceName: "myAvatar (9)"))
        let gabriela = User(name: "Gabriela", avatar: #imageLiteral(resourceName: "myAvatar (3)"))
        
        let room = Room(name: "Sala española 254", lang: Language.es)
        room.users = [diego, alfredo, clara, adela, franco, hugo, irma, ivon, julia, laura, gabriela]
        
        return room
    }
    
    static func testRussiaRoom() -> Room {
        
        let diego = User(name: "Дмитрий", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let max = User(name: "Максим", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let emma = User(name: "Лена", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        let julia = User(name: "Юлия", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        
        let kate = User(name: "Катя", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        let alex = User(name: "Алекс", avatar: #imageLiteral(resourceName: "myAvatar"))
        let mick = User(name: "Михаил", avatar: #imageLiteral(resourceName: "myAvatar (9)"))
        let jon = User(name: "Игорь", avatar: #imageLiteral(resourceName: "myAvatar (9)"))
        let jim = User(name: "Женя", avatar: #imageLiteral(resourceName: "myAvatar"))
        let jack = User(name: "Виктор", avatar: #imageLiteral(resourceName: "myAvatar (5)"))
        
        let room = Room(name: "На пару каток 265", lang: Language.ru)
        room.users = [diego, max, emma, julia, kate, alex, mick, jon, jim, jack]
        
        return room
    }
    
    static func testJapanRoom() -> Room {
        
        let diego = User(name: "佐藤", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let max = User(name: "铃木", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let emma = User(name: "高桥", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        let julia = User(name: "知念", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        let kate = User(name: "山本", avatar: #imageLiteral(resourceName: "myAvatar (1)"))
        
        let room = Room(name: "ジャパニーズルーム54", lang: Language.jp)
        room.users = [diego, max, emma, julia, kate]
        
        return room
    }
    
    static func testGermanRoom() -> Room {
        
        let peter = User(name: "Peter", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let michael = User(name: "Michael", avatar: #imageLiteral(resourceName: "myAvatar (5)"))
        let stephan = User(name: "Stephan", avatar: #imageLiteral(resourceName: "myAvatar (5)"))
        
        let room = Room(name: "Deutsches Zimmer 143", lang: Language.ger)
        room.users = [peter, michael, stephan]
        
        return room
    }
    
    static func testEnglis2hRoom() -> Room {
        
        let diego = User(name: "Diego", avatar: #imageLiteral(resourceName: "myAvatar (6)"))
        let max = User(name: "Max", avatar: #imageLiteral(resourceName: "myAvatar (9)"))
        let emma = User(name: "Emma", avatar: #imageLiteral(resourceName: "myAvatar (10)"))
        
        let room = Room(name: "English Room 435", lang: Language.en)
        room.users = [diego, max, emma]
        
        return room
    }
    
}
