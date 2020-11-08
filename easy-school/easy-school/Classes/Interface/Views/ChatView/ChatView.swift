//
//  ChatView.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class ChatView: NibView {

    var onDidDissmiss: (()->Void)?
    
    @IBOutlet weak var containerInputView: UIView! {
        didSet {
            self.containerInputView.layer.cornerRadius = 5
            self.containerInputView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var inputTextView: UITextField!
    @IBOutlet weak var sendButton: UIButton! {
        didSet {
            self.sendButton.layer.cornerRadius = 5
            self.sendButton.layer.masksToBounds = true
            self.sendButton.layer.borderWidth = 2
            self.sendButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBAction func onDidDismissTapped(_ sender: Any) {
        self.inputTextView.resignFirstResponder()
        self.onDidDissmiss?()
    }
    
    func openKeyboard() {
        self.inputTextView.becomeFirstResponder()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
