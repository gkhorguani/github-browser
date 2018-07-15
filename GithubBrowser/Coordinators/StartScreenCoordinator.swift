//
//  StartScreenCoordinator.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/13/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import UIKit

class StartScreenCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let vc = StartSceenViewController()
        let viewModel = StartScreenViewModel()
        viewModel.coordinatorDelegate = self
        vc.viewModel = viewModel
        window.rootViewController = vc
    }
}

extension StartScreenCoordinator: StartScreenCoordinatorDelegate {
    func didFinish(viewModel: StartScreenViewModel) {
        print("Start screen is done it's job")
        
        let repositoryListCoordinator = RepositoryListCoordinator(window: self.window)
        repositoryListCoordinator.start()
        
    }
    
    
}

