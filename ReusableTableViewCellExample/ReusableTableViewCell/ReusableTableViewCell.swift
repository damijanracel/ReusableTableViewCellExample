//
//  ReusableTableViewCell.swift
//  ReusableTableViewCellExample
//
//  Created by Damijan Račel on 03/02/2018.
//  Copyright © 2018 Damijan Račel. All rights reserved.
//

import UIKit

class ReusableTableViewCell: UITableViewCell {
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var leftTitleLabel: UILabel!
    @IBOutlet var leftSubtitleLabel: UILabel!
    @IBOutlet var rightSubtitleLabel: UILabel!
    @IBOutlet var rightTitleLabel: UILabel!
    
    @IBOutlet var iconWidthConstraint: NSLayoutConstraint!
    @IBOutlet var iconLeftConstraint: NSLayoutConstraint!
    
    func set(with dataProvider: ReusableTableViewCellDataProvider) {
        leftTitleLabel.text = dataProvider.leftTitle
        leftSubtitleLabel.text = dataProvider.leftSubtitle
        
        rightTitleLabel.text = dataProvider.rightTitle
        rightSubtitleLabel.text = dataProvider.rightSubtitle
        
        set(with: dataProvider.image)
    }
    
    private func set(with image: UIImage?) {
        guard let image = image else {
            hideImage()
            return
        }
        
        showImage()
        iconImageView.image = image
    }
    
    private func showImage() {
        iconWidthConstraint.constant = 50
        iconLeftConstraint.constant = 8
    }
    
    private func hideImage() {
        iconWidthConstraint.constant = 0
        iconLeftConstraint.constant = 0
    }
}
