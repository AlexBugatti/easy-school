//
//  MainButton.swift
//  easy-school
//
//  Created by Александр on 07.11.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class MainButton: NibView {

    var onDidTapped: (()->())?
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var topView: UIView! {
        didSet {
            self.topView.rotate(angle: -5)
        }
    }
    @IBOutlet weak var shadowButton: UIView! {
        didSet {
            self.shadowButton.rotate(angle: -5)
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    func commonInit() {
        
//        let tapRecognizer = UILongPressGestureRecognizer.init(target: self, action: #selector(onDidActionTapped(recognizer:)))
//        self.topView.addGestureRecognizer(tapRecognizer)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.down()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.onDidTapped?()
        self.up()
    }
    
//    @objc func onDidActionTapped(recognizer: UILongPressGestureRecognizer) {
//
//        switch recognizer.state {
//        case .began:
//            break
//        case .changed, .cancelled, .ended:
//            break
//        default:
//            break
//        }
//
//    }
    
    func down() {
//        self.leadingConstraint.constant = 6
        self.bottomConstraint.constant = 6
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    func up() {
//        self.leadingConstraint.constant = 0
        self.bottomConstraint.constant = 0
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
