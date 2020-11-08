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
    
    var messages: [Message] = [Message.test()] {
        didSet {
            self.tableView?.reloadData()
        }
    }
    
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
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            self.tableView.register(MessageCell.self)
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.transform = CGAffineTransform(rotationAngle: (-.pi))
        }
    }
    
    @IBAction func onDidDismissTapped(_ sender: Any) {
        self.inputTextView.resignFirstResponder()
        self.onDidDissmiss?()
    }
    
    @IBAction func onDidSendTapped(_ sender: Any) {
        if let text = self.inputTextView.text, text.isEmpty == false {
            let message = Message.init(name: text, user: User.current)
            self.messages.append(message)
//            self.tableView.insertRows(at: [IndexPath.init(row: 0, section: 0)], with: .automatic)
            self.tableView.reloadSections(IndexSet([0]), with: .automatic)
        }
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

extension ChatView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sortMessages = self.messages.sorted(by: { $0.date > $1.date })
        let message = sortMessages[indexPath.row]
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as MessageCell
        cell.transform = CGAffineTransform(rotationAngle: (-.pi))
        cell.configure(message)
        
        return cell
    }
    
}
