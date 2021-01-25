//
//  ReprositoryListTransformer.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation

protocol ReprositoryListTransforming {
    func toCellViewModels(from models: ReprositoryListResponse)->[ReprositoryCellViewModel]
}

class ReprositoryListTransformer: ReprositoryListTransforming {
    
    func toCellViewModels(from models: ReprositoryListResponse) -> [ReprositoryCellViewModel] {
        return []
    }
    
    private func toCellViewModels(from: ReprositoryListResponseElement)->ReprositoryCellViewModel{
        return ReprositoryCellViewModel()
    }
    
}
