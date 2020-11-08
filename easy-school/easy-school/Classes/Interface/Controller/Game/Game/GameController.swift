//
//  GameController.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class GameController: UIViewController {

    var didSelectUser: ((User)->())?
    var didDismissTapped: (()->())?
    
    var room: Room
    var users: [User] = [] {
        didSet {
            self.collectionView?.reloadData()
        }
    }
    
    init(room: Room) {
        self.room = room
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            self.collectionView.register(PlayerCell.self)
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
            self.collectionView.contentInset.left = Constants.defaultPadding
            self.collectionView.contentInset.right = Constants.defaultPadding
            self.collectionView.contentInset.top = Constants.defaultPadding
            self.collectionView.contentInset.bottom = Constants.defaultPadding
        }
    }
    private lazy var chatView: ChatView = {
        var chatView = ChatView()
        chatView.alpha = 0
        
        return chatView
    }()
    @IBOutlet weak var voiceView: UIButton! {
        didSet {
            self.voiceView.layer.cornerRadius = self.voiceView.frame.height / 2
            self.voiceView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var keyboardView: UIButton! {
        didSet {
            self.keyboardView.layer.cornerRadius = self.keyboardView.frame.height / 2
            self.keyboardView.layer.masksToBounds = true
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.chatView.frame = CGRect(x: 0, y: 0,
                                     width: self.view.frame.width, height: self.view.frame.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        // Do any additional setup after loading the view.
    }
    
    private func setup() {
        self.view.addSubview(self.chatView)
        self.registerKeyboardNotifications()
        self.chatView.onDidDissmiss = {
            UIView.animate(withDuration: 0.2) {
                self.chatView.alpha = 0
            }
        }
        
        self.users = self.room.users
        self.headerView.configure(language: Language.en)
        self.headerView.didTapSetting = {
            self.showSettingAlertController()
        }
    }
    
    private func showChat() {
        UIView.animate(withDuration: 0.2) {
            self.chatView.alpha = 1
        }
    }
    
    private func showSettingAlertController() {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let exit = UIAlertAction.init(title: "Выйти", style: .default) { (action) in
            self.didDismissTapped?()
        }
        let cancel = UIAlertAction.init(title: "Отмена", style: .destructive, handler: nil)
        alert.addAction(exit)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }

    // MARK: - Actions
    @IBAction func onDidChatTapped(_ sender: Any) {
        self.showChat()
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

extension GameController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.users.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let player = self.users[indexPath.row]
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as PlayerCell
        cell.configure(user: player)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let player = self.users[indexPath.row]
        self.didSelectUser?(player)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width - (3 * Constants.defaultPadding)) / 3
        let height = (4 * width) / 3
        
        return CGSize(width: width.rounded(.down), height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.defaultPadding / 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.defaultPadding / 2
    }
    
}

extension GameController {
    
    func registerKeyboardNotifications() {
        let center = NotificationCenter.default
        
        center.addObserver(with: UIViewController.keyboardWillShow) { payload in
            UIView.animate(withDuration: 0.2) {
                self.chatView.frame = CGRect.init(x: 0, y: 0,
                width: self.view.frame.width, height: self.view.frame.height - payload.endFrame.height)
            }
        }
        
        center.addObserver(with: UIViewController.keyboardWillHide) { payload in
            UIView.animate(withDuration: 0.2) {
                self.chatView.frame = CGRect.init(x: 0, y: 0,
                width: self.view.frame.width, height: self.view.frame.height)
            }
        }
    }
        
    func unregisterKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self)
    }
    
}
