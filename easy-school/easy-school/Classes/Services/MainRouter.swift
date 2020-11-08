//
//  MainRouter.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

protocol Router {
    var navigationController: UINavigationController { get set }
}

class MainRouter: Router {
    var navigationController: UINavigationController {
        didSet {
            
        }
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    func start() {
        let auth = AuthController.xib()
        auth.didAuthorized = {
            self.showMenuController()
        }
        navigationController.pushViewController(auth, animated: false)
    }
    
    func showMenuController() {
        let menuVC = MenuController.xib()
        menuVC.gotoPeople = {
            
        }
        menuVC.gotoRoom = {
            self.showRoomController()
        }
        menuVC.gotoSettings = {
            
        }
        menuVC.gotoProfile = {
            
        }
        navigationController.pushViewController(menuVC, animated: true)
    }
    
    func showRoomController() {
        let roomVC = RoomsController.xib()
        roomVC.didRoomTapped = { room in
            DispatchQueue.main.async {
                self.showGameController(room)
            }
        }
        roomVC.didBackTapped = {
            self.navigationController.popViewController(animated: true)
        }
        navigationController.pushViewController(roomVC, animated: true)
    }
    
    func showGameController(_ room: Room) {
        let gameVC = GameController(room: room)
        gameVC.didSelectUser = { user in
            self.showUserController(user)
        }
        gameVC.didDismissTapped = {
            self.navigationController.popViewController(animated: true)
        }
        navigationController.pushViewController(gameVC, animated: true)
    }
    
    func showUserController(_ user: User) {
        let profileVC = DetailProductController(user: user)
        navigationController.setNavigationBarHidden(false, animated: true)
        navigationController.pushViewController(profileVC, animated: true)
    }
    
}
