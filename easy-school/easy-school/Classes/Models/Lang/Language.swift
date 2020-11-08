//
//  Language.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

enum Lang {
    case ru
    case en
    case es
    case fr
    case jp
    case ch
    case ger
}

class Language {
    var type: Lang
    var mainColor: UIColor
    var extraColor: UIColor
    var cover: UIImage
    var flag: UIImage
    
    init(type: Lang, mColor: UIColor, eColor: UIColor, cover: UIImage, flag: UIImage) {
        self.type = type
        self.mainColor = mColor
        self.extraColor = eColor
        self.cover = cover
        self.flag = flag
    }
    
    static var en: Language {
        let en = Language(type: .en, mColor: #colorLiteral(red: 0.7830122113, green: 0.1109418646, blue: 0.1796910763, alpha: 1), eColor: #colorLiteral(red: 0.005033897702, green: 0.129422605, blue: 0.4124987125, alpha: 1), cover: #imageLiteral(resourceName: "english"), flag: #imageLiteral(resourceName: "icons8-great-britain-96"))
        return en
    }
    
    static var ch: Language {
        let ch = Language(type: .ch, mColor: #colorLiteral(red: 0.8697366714, green: 0.1601864994, blue: 0.05956406891, alpha: 1), eColor: #colorLiteral(red: 0.9499152303, green: 0.7876341939, blue: 0.2970163524, alpha: 1), cover: #imageLiteral(resourceName: "dragon-asiantr"), flag: #imageLiteral(resourceName: "843"))
        return ch
    }
    
    static var es: Language {
        let ch = Language(type: .ch, mColor: #colorLiteral(red: 0.964543283, green: 0.6953387856, blue: 0.002492565196, alpha: 1), eColor: #colorLiteral(red: 0.7761978507, green: 0.1070035174, blue: 0.1193140075, alpha: 1), cover: #imageLiteral(resourceName: "spain"), flag: #imageLiteral(resourceName: "flags-clip-art-65"))
        return ch
    }
    
    static var ger: Language {
        let ch = Language(type: .ger, mColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), eColor: #colorLiteral(red: 0.8665629029, green: 0.121683754, blue: 0, alpha: 1), cover: #imageLiteral(resourceName: "ger"), flag: #imageLiteral(resourceName: "47f7899beb0d"))
        return ch
    }
    
    static var jp: Language {
        let ch = Language(type: .ger, mColor:#colorLiteral(red: 0.7210860848, green: 0.09908200055, blue: 0.169816196, alpha: 1) , eColor: #colorLiteral(red: 0.9750739932, green: 0.9750967622, blue: 0.9750844836, alpha: 1), cover: #imageLiteral(resourceName: "depositphotos_13767126-stock-illustration-asian-seamless-pattern"), flag: #imageLiteral(resourceName: "icons8-japan-96"))
        return ch
    }
    
    static var ru: Language {
        let ch = Language(type: .ru, mColor:#colorLiteral(red: 0.006129773799, green: 0.2157786489, blue: 0.6331436038, alpha: 1) , eColor: #colorLiteral(red: 0.8165776134, green: 0.1640886664, blue: 0.112659581, alpha: 1), cover: #imageLiteral(resourceName: "36880706-russia-pattern"), flag: #imageLiteral(resourceName: "icons8-russian-federation-96"))
        return ch
    }
    
}
