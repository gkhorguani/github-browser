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
    var submitButton: UIButton!
    var userName: UITextField!
    
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
        
        submitButton = UIButton()
        submitButton.setTitle("Submit", for: UIControlState.normal)
        submitButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        submitButton.backgroundColor = UIColor(red:0.00, green:0.75, blue:0.44, alpha:1.0)
        submitButton.tintColor = .white
        self.view.addSubview(submitButton)
        
        userName = UITextField()
        userName.placeholder = "Enter any github username"
        userName.font = UIFont.boldSystemFont(ofSize: 20)
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
