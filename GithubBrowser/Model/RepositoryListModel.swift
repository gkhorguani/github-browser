//
//  RepositoryListModel.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct Repository {
    var name: String
    var startsCount: Int
}

class RepositoryListModel {
    func fetchRepositories(username: String, completion: @escaping ([Repository]) -> Void) {
        Alamofire.request("https://api.github.com/users/\(username)/repos").responseJSON { response in
            if let json = response.result.value {
                let repositories: [Repository] = JSON(json).arrayValue.map(){ result in
                    let repo = Repository(name: result["name"].stringValue, startsCount: result["stargazers_count"].intValue)
                    return repo
                }
                
                completion(repositories)
            }
        }
    }
}
