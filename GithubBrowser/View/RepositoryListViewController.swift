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

class RepositoryListViewController: UITableViewController {
    let cellId = "cellid"
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
        
        setupUI()
        setupBindings()
        viewModel?.fetchRepositories()
    }
    
    func setupUI() {
        // Register the cell
        tableView.register(RepositoryTableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    func setupBindings() {
        viewModel?.isLoading.asObservable().subscribe({_ in 
            // Reload the tableView when is loading changes. Might have binded directly to repositories array coming from viewModel..
            self.tableView.reloadData()
        }).disposed(by: disposeBag)
    }
}

extension RepositoryListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let repositoriesCount = viewModel?.repositories.count {
            return repositoriesCount
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! RepositoryTableViewCell
        if let repository = viewModel?.repositories[indexPath.row] {
            cell.viewModel = RepositoryCellViewModel(name: repository.name, language: repository.language)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension RepositoryListViewController: RepositoryListViewDelegate {
    func fetchComplete(viewModel: RepositoryListViewModel) {
        // todo : implement
    }
}
