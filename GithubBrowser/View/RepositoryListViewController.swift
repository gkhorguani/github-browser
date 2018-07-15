//
//  RepositoryListViewController.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit

class RepositoryListViewController: UIViewController {
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
        
        self.view.backgroundColor = .blue
        
        // Test
        _ = viewModel?.fetchRepositories(username: "gkhorguani")
    }
}

extension RepositoryListViewController: RepositoryListViewDelegate {
    func fetchComplete(viewModel: RepositoryListViewModel) {
        // todo : implement
    }
}
