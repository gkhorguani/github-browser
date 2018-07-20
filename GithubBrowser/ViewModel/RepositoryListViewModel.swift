//
//  RepositoryListViewModel.swift
//

import Foundation
import RxSwift

protocol RepositoryListViewDelegate: class {
    func fetchComplete(viewModel: RepositoryListViewModel)
}

protocol RepositioryListCoordinatorDelegate: class {
    func didFinish(viewModel: RepositoryListViewModel)
}

class RepositoryListViewModel: ViewModelContract, ViewModelRoutable {
    weak var viewDelegate: RepositoryListViewDelegate?
    weak var coordinatorDelegate: RepositioryListCoordinatorDelegate?
    var router: Router<String>?
    var model: RepositoryListModel?
    var repositories = [Repository]()
    var isLoading = Variable<Bool>(true)
    
    func fetchRepositories() {
        if let username = router?.routeParams["arg0"] {
            model?.fetchRepositories(username: username) { repositories in
                self.repositories = repositories
                self.isLoading.value = false
            }
        }
    }
    
}
