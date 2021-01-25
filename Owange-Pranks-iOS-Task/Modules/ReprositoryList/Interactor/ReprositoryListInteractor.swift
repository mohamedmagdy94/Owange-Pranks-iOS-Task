//
//  ReprositoryListInteractor.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation

protocol ReprositoryListInteractorProtocol: class {
    func getList(pageNumber: Int)
    func search(query: String)
    func filter(filter: ReprositoryListFilter)
}

class ReprositoryListInteractor: ReprositoryListInteractorProtocol {
    
    
    
    func getList(pageNumber: Int) {
        
    }
    
    func search(query: String) {
        
    }
    
    func filter(filter: ReprositoryListFilter) {
        
    }
    
}
