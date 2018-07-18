//
//  Coordinator.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/13/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation

protocol Coordinator: class {
    associatedtype Parameter
    
    func start(router: Router<Parameter>?)
}
