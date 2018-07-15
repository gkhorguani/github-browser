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
    
    func start() {
        let vc = RepositoryListViewController()
        let vm = RepositoryListViewModel()
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
