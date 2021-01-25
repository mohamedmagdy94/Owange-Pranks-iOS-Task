//
//  ReprositoryListTransformer.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import UIKit

protocol ReprositoryListTransforming {
    func toCellViewModels(from models: ReprositoryListResponse)->[ReprositoryCellViewModel]
}

class ReprositoryListTransformer: ReprositoryListTransforming {
    
    func toCellViewModels(from models: ReprositoryListResponse) -> [ReprositoryCellViewModel] {
        let viewModels = models.map{[unowned self] in self.toCellViewModels(from: $0)  }
        return viewModels
    }
    
    private func toCellViewModels(from model: ReprositoryListResponseElement)->ReprositoryCellViewModel{
        let backgroundColor = model.fork ?? false ? UIColor.owangeBlue : UIColor.owangeOrange
        let model = ReprositoryCellViewModel(imageURL: model.owner?.avatarURL ?? "", name: model.name ?? "", description: model.repoDescription ?? "", forksCount: "\(model.forks ?? 0)", issuesCount: "\(model.openIssuesCount ?? 0)", language: model.language ?? "", backgroundColor: backgroundColor)
        return model
    }
    
}
