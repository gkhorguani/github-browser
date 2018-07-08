//
//  LoginViewController.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/7/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .green

        // Do any additional setup after loading the view.
        print("Login vc has been called")
        
        setupUI()
    }
    
    func setupUI() {
        guard let superview = self.view else { return }
        let box = UIView()
        superview.addSubview(box)
        
        box.backgroundColor = .blue
        
        box.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(superview).inset(UIEdgeInsetsMake(20, 20, 20, 20))
        }

    }

}
