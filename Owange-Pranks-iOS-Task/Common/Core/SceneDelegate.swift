//
//  SceneDelegate.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/23/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import UIKit

import UIKit
@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window : UIWindow?
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            self.window = UIWindow(windowScene: windowScene)
            let appRouter = AppNavigationRouter(window: self.window!)
            appRouter.start()
        }
    }
}
