//
//  RepositoryTableViewCell.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/19/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit
import SnapKit

class RepositoryTableViewCell: UITableViewCell {
    var viewModel: RepositoryCellViewModel? {
        didSet {
            setupUI()
        }
    }
    
    lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        return label
    }()
    
    lazy var languageLabel: UILabel = {
       var label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(languageLabel)
        nameLabel.text = viewModel!.name
        languageLabel.text = viewModel!.language
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(self.contentView).offset(20)
            make.centerY.equalTo(self.contentView)
        }
        
        languageLabel.snp.makeConstraints { make in
            make.right.equalTo(self.contentView).offset(-20)
            make.centerY.equalTo(self.contentView)
        }
    }

}
