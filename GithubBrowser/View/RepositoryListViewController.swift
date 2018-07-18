//
//  RepositoryListViewController.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class RepositoryListViewController: UIViewController {
    let disposeBag = DisposeBag()
    var viewModel: RepositoryListViewModel? {
        willSet {
            viewModel?.viewDelegate = nil
        }
        didSet {
            viewModel?.viewDelegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBindings()
        
        viewModel?.fetchRepositories()
    }
    
    func setupBindings() {
        viewModel?.isLoading.asObservable().subscribe(onNext: {
            self.view.backgroundColor = $0 ? .blue : .orange
        }).disposed(by: disposeBag)
    }
}

extension RepositoryListViewController: RepositoryListViewDelegate {
    func fetchComplete(viewModel: RepositoryListViewModel) {
        // todo : implement
    }
}
