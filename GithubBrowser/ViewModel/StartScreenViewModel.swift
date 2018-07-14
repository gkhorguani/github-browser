//
//  StartScreenViewModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/13/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import RxSwift

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
    
    let username = Variable<String>("")
    let password = Variable<String>("test")
    let isValid: Observable<Bool>
    
    init() {
        isValid = self.username.asObservable().map(){
            return $0.count > 3
        }
    }
    
    func handleUsernameInput() {
        print("View model is going to check an username..")
        viewDelegate?.userNameCheckComplete(viewModel: self) // I might not even need this call
        coordinatorDelegate?.didFinish(viewModel: self)
    }
    
}

