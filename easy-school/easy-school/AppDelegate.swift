//
//  AppDelegate.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navigationController = UINavigationController()
        let mainRouter = MainRouter(navigationController: navigationController)
        mainRouter.start()
        
        window?.rootViewController = navigationController
        
        return true
    }


}

