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
    func userNameCheckComplete(viewModel: StartScreenViewModel)
}

protocol StartScreenCoordinatorDelegate: class {
    func didFinish(viewModel: StartScreenViewModel)
}

class StartScreenViewModel: ViewModelContract {
    weak var coordinatorDelegate: StartScreenCoordinatorDelegate?
    weak var viewDelegate: StartScreenViewDelegate?
    var router: Router<String>?
    
    let username = Variable<String>("")
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

