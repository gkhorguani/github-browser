//
//  RepositoryListViewModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation

protocol RepositoryListViewDelegate: class {
    func fetchComplete(viewModel: RepositoryListViewModel)
}

protocol RepositioryListCoordinatorDelegate: class {
    func didFinish(viewModel: RepositoryListViewModel)
}

class RepositoryListViewModel: ViewModelContract {
    var viewDelegate: RepositoryListViewDelegate?
    var coordinatorDelegate: RepositioryListCoordinatorDelegate?
    
    var model: RepositoryListModel?
    
    func fetchRepositories(username: String) {
        model?.fetchRepositories(username: username) { repository in
            print(repository)
        }
    }
    
}
