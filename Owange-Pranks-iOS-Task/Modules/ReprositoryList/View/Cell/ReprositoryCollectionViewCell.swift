//
//  ReprositoryCollectionViewCell.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import UIKit

class ReprositoryCollectionViewCell: UICollectionViewCell {

    static var IDENTIFIER = "REPROPSITORY_COLLECTION_VIEW_CELL"
    
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var repoForkCounts: UILabel!
    @IBOutlet weak var repoIssuesCountLabel: UILabel!
    @IBOutlet weak var repoLanguageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        setup()
    }
    
    private func setup(){
        ownerImageView.makeViewCircular()
    }


}
