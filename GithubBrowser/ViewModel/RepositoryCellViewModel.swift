//
//  RepositoryCellViewModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/19/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

struct RepositoryCellViewModel {
    var _name: String
    var _language: String
    
    var Name: String {
        get {
            return self._name
        }
    }
    
    var Language: String {
        get {
            if self._language == "" {
                return "N/A"
            }
            
            return self._language
        }
    }
}
