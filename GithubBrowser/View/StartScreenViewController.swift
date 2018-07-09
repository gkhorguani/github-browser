//
//  LoginViewController.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/7/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit
import SnapKit

class StartSceenViewController: UIViewController {
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: UIControlState.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = UIColor(red:0.00, green:0.75, blue:0.44, alpha:1.0)
        button.tintColor = .white
        
        return button
    }()
    
    lazy var userName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter any github username"
        textField.font = UIFont.boldSystemFont(ofSize: 20)
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Login vc has been called")
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        remakeUI()
    }
    
    func setupUI() {
        self.view.backgroundColor = .white
        self.view.addSubview(submitButton)
        self.view.addSubview(userName)
        
        submitButton.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.view)
            make.height.equalTo(70)
            make.width.equalTo(self.view)
        }
        
        userName.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            if #available(iOS 11, *) {
                make.width.equalTo(self.view.safeAreaLayoutGuide).offset(-50)
            } else {
                make.width.equalTo(self.view).offset(-50)
            }
            make.center.equalTo(self.view)
        }
    }
    
    func remakeUI() {
        userName.underline(color: UIColor(red:0.42, green:0.59, blue:0.91, alpha:1.0))
    }
    
}
