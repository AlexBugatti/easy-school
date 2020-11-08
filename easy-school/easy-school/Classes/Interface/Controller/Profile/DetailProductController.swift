//
//  DetailProductController.swift
//  vk-market
//
//  Created by Александр on 29.10.2020.
//  Copyright © 2020 AlexBugatti. All rights reserved.
//

import UIKit

class DetailProductController: UIViewController {

    @IBOutlet private weak var stackView: UIStackView!
    @IBOutlet private weak var pictureView: UIImageView!
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var descriptionView: UIView!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var photoSlider: PhotoSlider!
    @IBOutlet private weak var favoriteButton: UIButton!
    @IBOutlet private weak var actionButton: UIButton!
    
    var user: User
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Товар"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.title = ""
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.setup(product: self.product)
        // Do any additional setup after loading the view.
    }
    
    private func setup(product: User) {
//        self.titleLabel.text = product.title
//        self.priceLabel.text = product.priceString
//        self.pictureView.sd_setImage(with: product.pictureURL, completed: nil)
//        self.descriptionLabel.text = product.description
//        self.commentView.onDidTapped = {
//            self.showCommentController(product: product)
//        }
//        self.photoSlider.setupUI(strings: self.product.photos?.compactMap({ $0.photoURL }) ?? [product.pictureURL!.absoluteString])
//        let image = product.isFavorite ? #imageLiteral(resourceName: "star-active") : #imageLiteral(resourceName: "star")
//        self.favoriteButton.setImage(image, for: .normal)
//        if let buttonTitle = product.buttonTitle {
//            self.actionButton.setTitle(buttonTitle, for: .normal)
//        }
    }
    
    
    // MARK: - Actions
    
    
    @IBAction func onDidActionTapped(_ sender: Any) {

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
