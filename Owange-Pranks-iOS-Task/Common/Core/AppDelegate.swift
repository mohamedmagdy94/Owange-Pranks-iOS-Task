//
//  AppDelegate.swift
//  Owange-Pranks-iOS-Task
//
//  Created by Mohamed El-Taweel on 1/23/21.
//  Copyright © 2021 OwangePranks. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate : UIResponder, UIApplicationDelegate {
    var window : UIWindow?
    func application(_ application: UIApplication,
        didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
        -> Bool {
            if #available(iOS 13, *) {
                // do only pure app launch stuff, not interface stuff
            } else {
                 self.window = UIWindow()
                let appRouter = AppNavigationRouter(window: self.window!)
                appRouter.start()
            }
            return true
    }
}
