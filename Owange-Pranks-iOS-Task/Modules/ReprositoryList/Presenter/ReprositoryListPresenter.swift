//
//  ReprositoryListPresenter.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import UIKit

protocol PresenterToViewReprositoryListProtocol: class {
    var repos: [ReprositoryCellViewModel]{get}
    func onScreenAppeared()
    func onSearchRequested(searchQuery: String)
    func onFilterRequested(index: Int)
    func onRowWillBeShowen(index: Int)
}

protocol PresenterToInteractorReprositoryListProtocol: class {
    func onReprositoryListFetchSuccess(response: ReprositoryListResponse)
    func onReprositoryListFetchFailed(error: ReprositoryListError)
}

typealias ReprositoryListPresenterProtocol = PresenterToViewReprositoryListProtocol & PresenterToInteractorReprositoryListProtocol

class ReprositoryListPresenter: ReprositoryListPresenterProtocol {
    
    private weak var view: ReprositoryListViewProtocol?
    private weak var navigationRouter: ReprositoryListNavigationRouterProtocol?
    private var interactor: ReprositoryListInteractorProtocol?
    private var transformer: ReprositoryListTransforming?
    private var isLoading: Bool
    private var pageNumber: Int
    private var pageSize: Int
    var repos: [ReprositoryCellViewModel]
    
    init(view: ReprositoryListViewProtocol? = nil, navigationRouter: ReprositoryListNavigationRouterProtocol? = nil, interactor: ReprositoryListInteractorProtocol? = nil,transformer: ReprositoryListTransforming) {
        self.view = view
        self.navigationRouter = navigationRouter
        self.interactor = interactor
        self.isLoading = false
        self.pageNumber = 1
        self.pageSize = 30
        self.transformer = transformer
        self.repos = []
    }
    
    
    func onScreenAppeared() {
        view?.showLoading()
        interactor?.getList(pageNumber: pageNumber)
    }
    
    func onSearchRequested(searchQuery: String) {
        view?.showLoading()
        interactor?.search(query: searchQuery)
    }
    
    func onFilterRequested(index: Int) {
        view?.showLoading()
        let filter = ReprositoryListFilter.init(rawValue: index) ?? ReprositoryListFilter.ALL
        interactor?.filter(filter: filter)
    }
    
    func onRowWillBeShowen(index: Int) {
        if index == repos.count - 1{
            view?.showLoading()
            pageNumber += 1
            interactor?.getList(pageNumber: index)
        }
    }
    
    func onReprositoryListFetchSuccess(response: ReprositoryListResponse) {
        self.repos = transformer?.toCellViewModels(from: response) ?? [ReprositoryCellViewModel]()
        view?.reloadData()
        if self.repos.count > 0{
            let indexToFocusOn = (pageNumber - 1) * pageSize
            view?.focusOnReprository(index: indexToFocusOn)
            view?.hideLoading()
        }

        
    }
    
    func onReprositoryListFetchFailed(error: ReprositoryListError) {
        view?.hideLoading()
        view?.showError(with: error.localizedDescription)
    }
    
    
    
    
    
}
