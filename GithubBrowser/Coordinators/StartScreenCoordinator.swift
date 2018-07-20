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
    
    func start(router: Router<String>?) {
        let vc = StartSceenViewController()
        let viewModel = StartScreenViewModel()
        viewModel.coordinatorDelegate = self
        vc.viewModel = viewModel
        
        window.rootViewController = vc
    }
}

extension StartScreenCoordinator: StartScreenCoordinatorDelegate {
    func didFinish(viewModel: StartScreenViewModel) {
        let repositoryListCoordinator = RepositoryListCoordinator(window: self.window)
        let router = Router<String>()
        
        router.setParmeters(parameters: viewModel.username.value) // This can be a list like javascript args..
        repositoryListCoordinator.start(router: router)
    }
    
    
}

