//
//  ReprositoryListPresenter.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation

protocol PresenterToViewReprositoryListProtocol {
    func onScreenAppeared()
    func onSearchRequested(searchQuery: String)
    func onFilterRequested(index: Int)
    func onRowWillBeShowen(index: Int)
    func onLoadMore()
}

protocol PresenterToInteractorReprositoryListProtocol {
    func onReprositoryListFetchSuccess(response: ReprositoryListResponse)
    func onReprositoryListFetchFailed(error: ReprositoryListError)
}

typealias ReprositoryListPresenterProtocol = PresenterToViewReprositoryListProtocol & PresenterToInteractorReprositoryListProtocol

class ReprositoryListPresenter: ReprositoryListPresenterProtocol {
    
    
    weak var view: ReprositoryListViewProtocol?
    weak var navigationRouter: ReprositoryListNavigationRouterProtocol?
    weak var interactor: ReprositoryListInteractorProtocol?
    
    
    func onScreenAppeared() {
        
    }
    
    func onSearchRequested(searchQuery: String) {
        
    }
    
    func onFilterRequested(index: Int) {
        
    }
    
    func onRowWillBeShowen(index: Int) {
        
    }
    
    func onLoadMore() {
        
    }
    
    func onReprositoryListFetchSuccess(response: ReprositoryListResponse) {
        
    }
    
    func onReprositoryListFetchFailed(error: ReprositoryListError) {
        
    }
    
    
    
}
