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
    
    @IBOutlet weak var rootView: UIView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    @IBOutlet weak var repoForkCounts: UILabel!
    @IBOutlet weak var repoIssuesCountLabel: UILabel!
    @IBOutlet weak var repoLanguageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width * 0.96).isActive = true
        ownerImageView.makeViewCircular()
    }

    
    
    func config(with model: ReprositoryCellViewModel){
        rootView.backgroundColor = model.backgroundColor
        ownerImageView.sd_setImage(with: URL(string: model.imageURL), placeholderImage: #imageLiteral(resourceName: "owange_pranks_logo"))
        repoNameLabel.text = model.name
        repoDescriptionLabel.text = model.description
        repoForkCounts.text = model.forksCount
        repoIssuesCountLabel.text = model.issuesCount
        repoLanguageLabel.text = model.language
    }
    
}
