//  Expo1900 - ExpositionItemDetailViewController.swift
//  Created by Ayaan, Bella on 2022/10/20.
//  Copyright © yagom academy. All rights reserved.

import UIKit

final class ExpositionItemDetailViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet private weak var itemImageView: UIImageView!
    @IBOutlet private weak var itemDescriptionLabel: UILabel!
    
    //MARK: - Property
    var item: ExpositionUniverselleItem?
    
    //MARK: - Override Method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemDescriptionLabel.numberOfLines = 0
        assignContentValue()
        self.title = item?.name
    }

    //MARK: - Private Method
    private func assignContentValue() {
        guard let item = item else {
            return
        }
        
        itemImageView.image = UIImage(named: item.imageName)
        itemDescriptionLabel.text = item.description
    }
}
