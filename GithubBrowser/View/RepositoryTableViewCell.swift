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
    
    lazy var languageLabelView: UIView = {
       var labelView = UIView()
        labelView.backgroundColor = UIColor(red:0.00, green:0.75, blue:0.44, alpha:1.0)
        labelView.layer.cornerRadius = 20
        
        return labelView
    }()
    
    lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        
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
        languageLabelView.addSubview(languageLabel)
        contentView.addSubview(languageLabelView)
        
        nameLabel.text = viewModel!.Name
        languageLabel.text = viewModel!.Language
        
        
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(self.contentView).offset(20)
            make.centerY.equalTo(self.contentView)
        }
        
        languageLabelView.snp.makeConstraints { make in
            make.right.equalTo(self.contentView).offset(-20)
            make.width.greaterThanOrEqualTo(100)
            make.height.greaterThanOrEqualTo(40)
            make.centerY.equalTo(self.contentView)
        }
        
        languageLabel.snp.makeConstraints { make in
            make.center.equalTo(self.languageLabelView)
        }
    }

}
