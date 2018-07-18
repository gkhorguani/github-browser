//
//  RepositoryListViewModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import RxSwift

protocol RepositoryListViewDelegate: class {
    func fetchComplete(viewModel: RepositoryListViewModel)
}

protocol RepositioryListCoordinatorDelegate: class {
    func didFinish(viewModel: RepositoryListViewModel)
}

class RepositoryListViewModel: ViewModelContract {
    weak var viewDelegate: RepositoryListViewDelegate?
    weak var coordinatorDelegate: RepositioryListCoordinatorDelegate?
    var model: RepositoryListModel?
    var isLoading = Variable<Bool>(true)
    var username: String?
    
    func fetchRepositories() {
        model?.fetchRepositories(username: self.username!) { repositories in
            self.isLoading.value = false
        }
    }
    
}
