//
//  AppCoordinator.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/13/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var window: UIWindow
    var coordinators = [String:Coordinator]()
    
    init(window: UIWindow)
    {
        self.window = window
    }
    
    func start() {
        print("App coorinator called")
        
        if doesHaveAUserName {
            showRepositoryList()
        } else {
            showStartScreen()
        }
    }
}

extension AppCoordinator: StartScreenCoordinatorDelegate {
    var doesHaveAUserName: Bool {
        return false
    }
    
    func showStartScreen() {
        // Start screen
        let startScreenCoordinator = StartScreenCoordinator(window: window)
        startScreenCoordinator.delegate = self
        startScreenCoordinator.start()
    }
    
    func startScreenFinished(startScreenCoordinator: StartScreenCoordinator) {
        // Any additional logic before showing a list
        showRepositoryList()
    }
}

extension AppCoordinator {
    func showRepositoryList() {
        // Repository list screen
        print("Now show the list")
    }
}
