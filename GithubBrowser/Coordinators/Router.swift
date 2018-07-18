//
//  Router.swift
//  GithubBrowser
//
//  Created by Giorgi Khorguani on 7/17/18.
//  Copyright © 2018 Giorgi Khorguani. All rights reserved.
//

protocol AppRouter {
    associatedtype Parameter
    var routeParams: [Parameter] { get }
    
    func setParmeter(parameter: Parameter)
}

class Router<T>: AppRouter {
    typealias Parameter = T
    var routeParams: [T] = []
    
    func setParmeter(parameter: T) {
        routeParams.append(parameter)
    }
}
