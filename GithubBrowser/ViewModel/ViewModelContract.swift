//
//  ViewModelContract.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

import Foundation

protocol ViewModelContract {
    associatedtype T
    associatedtype U
    
    var viewDelegate: T? {get set}
    var coordinatorDelegate: U? {get set}
}