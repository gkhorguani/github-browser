//
//  RepositoryListViewController.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit

class RepositoryListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue

        // Do any additional setup after loading the view.
    }
}

extension RepositoryListViewController: RepositoryListViewDelegate {
    func fetchComplete(viewModel: RepositoryListViewModel) {
        // todo : implement
    }
}
