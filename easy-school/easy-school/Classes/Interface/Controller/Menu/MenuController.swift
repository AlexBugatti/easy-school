//
//  MenuController.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

    @IBOutlet weak var startButton: MainButton! {
        didSet {
            self.startButton.titleLabel.text = "Начать игру"
        }
    }
    @IBOutlet weak var rulesButton: MainButton! {
        didSet {
            self.rulesButton.titleLabel.text = "Правила"
            self.rulesButton.topView.backgroundColor = #colorLiteral(red: 0.9206163287, green: 0.6270195842, blue: 0.1076805964, alpha: 1)
            self.rulesButton.shadowButton.backgroundColor = #colorLiteral(red: 0.9207690954, green: 0.3558272719, blue: 0.1099788472, alpha: 1)
        }
    }
    @IBOutlet weak var settingsButton: MainButton! {
        didSet {
            self.settingsButton.titleLabel.text = "Настройки"
            self.settingsButton.topView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            self.settingsButton.shadowButton.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        }
    }
    
    
    
    var gotoRoom: (()->Void)?
    var gotoSettings: (()->Void)?
    var gotoPeople: (()->Void)?
    var gotoProfile: (()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.startButton.onDidTapped = {
            self.gotoRoom?()
        }
        self.rulesButton.onDidTapped = {
            self.gotoSettings?()
        }
        // Do any additional setup after loading the view.
    }

    // MARK: - Actions
    
//    @IBAction func onDidStartTapped(_ sender: Any) {
//
//    }
//
//    @IBAction func onDidSettingsTapped(_ sender: Any) {
//
//    }
//
//    @IBAction func onDidPeopleTapped(_ sender: Any) {
//        self.gotoPeople?()
//    }
//
//    @IBAction func onDidProfileTapped(_ sender: Any) {
//        self.gotoProfile?()
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
