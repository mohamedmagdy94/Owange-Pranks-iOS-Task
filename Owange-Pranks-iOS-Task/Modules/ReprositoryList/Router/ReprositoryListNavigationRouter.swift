//
//  ReprositoryListNavigationRouter.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/24/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import UIKit
import Unrealm
import Moya

protocol ReprositoryListNavigationRouterProtocol: class {
    static func createModule()->UIViewController
}

class ReprositoryListNavigationRouter: ReprositoryListNavigationRouterProtocol {
    static func createModule() -> UIViewController {
        let targetViewController = UIViewController.create(storyboardName: StoryboardName.REPROSITORY_LIST.rawValue, viewControllerID: ViewControllerIdentifier.ReprositoryListViewController.rawValue) as! ReprositoryListViewController
        let navigationRouter = ReprositoryListNavigationRouter(view: targetViewController)
        let remoteDataSource = MoyaProvider<ReprositoryListNetworkRouter>()
        let localDataSource = try! Realm()
        let interactor = ReprositoryListInteractor(remoteDataSource: remoteDataSource, jsonTransformer: CodableTransformer(), localDataSource: localDataSource)
        let presenter = ReprositoryListPresenter(view: targetViewController, navigationRouter: navigationRouter, interactor: interactor, transformer: ReprositoryListTransformer())
        targetViewController.presenter = presenter
        interactor.presenter = presenter
        return targetViewController
        
    }
    
    var view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
}
