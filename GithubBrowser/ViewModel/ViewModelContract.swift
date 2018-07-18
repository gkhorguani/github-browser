//
//  ViewModelContract.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/14/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

protocol ViewModelContract {
    associatedtype T
    associatedtype U
    
    var viewDelegate: T? {get set}
    var coordinatorDelegate: U? {get set}
}

protocol ViewModelRoutable {
    associatedtype P
    
    var router: Router<P>? { get }
}

// Should I also create the unicorn type of contract combining these two?
