//
//  ReprositoryListInteractor.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import Moya
import Unrealm

protocol ReprositoryListInteractorProtocol: class {
    func getList(pageNumber: Int)
    func search(query: String)
    func filter(filter: ReprositoryListFilter)
}

class ReprositoryListInteractor: ReprositoryListInteractorProtocol {
    
    private var remoteDataSource: MoyaProvider<ReprositoryListNetworkRouter>
    weak var presenter: PresenterToInteractorReprositoryListProtocol?
    private var jsonTransformer: CodableTransforming
    private var response: ReprositoryListResponse
    private var localDataSource: Realm
    private var pageNumber: Int
    
    init(remoteDataSource: MoyaProvider<ReprositoryListNetworkRouter>, presenter: PresenterToInteractorReprositoryListProtocol? = nil, jsonTransformer: CodableTransforming,localDataSource: Realm) {
        self.remoteDataSource = remoteDataSource
        self.presenter = presenter
        self.jsonTransformer = jsonTransformer
        self.response = []
        self.pageNumber = 1
        self.localDataSource = localDataSource
    }
    
    
    func getList(pageNumber: Int) {
        self.pageNumber = pageNumber
        if pageNumber == 1{
            getDataLocally()
        }
        remoteDataSource
            .request(.getRepos) {[weak self] (result) in
                self?.handleResponse(with: result)
        }
    }
    
    private func getDataLocally(){
        let savedRepos = localDataSource.objects(ReprositoryListResponseElement.self)
        if savedRepos.count > 0{
            let result = Array(savedRepos)
            self.response.append(contentsOf: result)
            presenter?.onReprositoryListFetchSuccess(response: self.response)
        }
    }
    
    private func handleResponse(with result: Result<Response, MoyaError>){
        switch result {
        case .success(let response):
            
            if response.statusCode == 200{
                guard let responseModel = jsonTransformer.decodeObject(from: response.data, to: ReprositoryListResponse.self) else{
                    pageNumber = pageNumber == 1 ? 1 : pageNumber - 1
                    presenter?.onReprositoryListFetchFailed(error: .SERVER_ERROR)
                    return
                }
                if pageNumber == 1{
                    self.response.removeAll()
                }
                self.response.append(contentsOf: responseModel)
                saveDataLocally()
                presenter?.onReprositoryListFetchSuccess(response: self.response)
            }else{
                pageNumber = pageNumber == 1 ? 1 : pageNumber - 1
                presenter?.onReprositoryListFetchFailed(error: .SERVER_ERROR)
            }
        case .failure:
            pageNumber = pageNumber == 1 ? 1 : pageNumber - 1
            presenter?.onReprositoryListFetchFailed(error: .INTERNET_ERROR)
        }
    }
    
    private func saveDataLocally(){
        if pageNumber == 1{
            try! localDataSource.write{[weak self] in
                guard let weakSelf = self else{ return }
                localDataSource.deleteAll()
                weakSelf.localDataSource.add(weakSelf.response)
            }
        }
    }
    
    func search(query: String) {
        if query == ""{
            presenter?.onReprositoryListFetchSuccess(response: self.response)
        }else{
            let result = response.filter{ ($0.name?.contains(query) ?? false) }
            presenter?.onReprositoryListFetchSuccess(response: result)
        }
    }
    
    func filter(filter: ReprositoryListFilter) {
        switch filter {
        case .ALL:
            presenter?.onReprositoryListFetchSuccess(response: self.response)
        case .FORKED:
            let result = response.filter{ $0.fork ?? false }
            presenter?.onReprositoryListFetchSuccess(response: result)
        case .NOT_FORKED:
            let result = response.filter{ !($0.fork ?? false) }
            presenter?.onReprositoryListFetchSuccess(response: result)
            
        }
    }
    
}
