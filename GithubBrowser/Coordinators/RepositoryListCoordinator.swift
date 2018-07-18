//
//  RepositoryListCoordinator.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import UIKit

class RepositoryListCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start(router r: Router<String>?) {
        let vc = RepositoryListViewController()
        let vm = RepositoryListViewModel()
        
        // Set parameters, if any
        if let router = r {
            vm.router = router
        }
        
        let model = RepositoryListModel()
        vm.model = model
        vc.viewModel = vm
        
        window.rootViewController = vc
    }
}

extension RepositoryListCoordinator: RepositioryListCoordinatorDelegate {
    func didFinish(viewModel: RepositoryListViewModel) {
        // todo: table item click event or something
    }
}
