//
//  AuthController.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class AuthController: UIViewController {

    @IBOutlet weak var authButton: MainButton!
    
    var didAuthorized: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        authButton.onDidTapped = {
            self.didAuthorized?()
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
