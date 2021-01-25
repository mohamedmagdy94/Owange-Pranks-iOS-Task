//
//  AppNavigationRouter.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/25/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import Foundation
import UIKit
import Unrealm

class AppNavigationRouter {
    
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start(){
        Realm.registerRealmables(ReprositoryListResponseElement.self)
        let startViewController = ReprositoryListNavigationRouter.createModule()
        let navigationController = UINavigationController(rootViewController: startViewController)
        navigationController.isNavigationBarHidden = true
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}
