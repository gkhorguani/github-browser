//
//  StartScreenViewModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/13/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation

protocol StartScreenViewDelegate: class {
    func userNameCheckComplete(viewModel: StartScreenViewModelContract)
}

protocol StartScreenCoordinatorDelegate: class {
    func didFinish(viewModel: StartScreenViewModelContract)
}

protocol StartScreenViewModelContract {
    var viewDelegate: StartScreenViewDelegate? {get set}
    var coordinatorDelegate: StartScreenCoordinatorDelegate? {get set}
}

class StartScreenViewModel: StartScreenViewModelContract {
    weak var coordinatorDelegate: StartScreenCoordinatorDelegate?
    weak var viewDelegate: StartScreenViewDelegate?
    
    func handleUsernameInput() {
        print("View model is going to check an username..")
        viewDelegate?.userNameCheckComplete(viewModel: self) // I might not even need this call
        coordinatorDelegate?.didFinish(viewModel: self)
    }
}

