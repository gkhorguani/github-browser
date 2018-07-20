//
//  Router.swift
//  GithubBrowser
//

protocol AppRouter {
    associatedtype Parameter
    
    var routeParams: [String: Parameter] { get }
    
    func setParmeters(parameters: Parameter...)
}

class Router<T>: AppRouter {
    var routeParams = Dictionary<String, T>()
    
    func setParmeters(parameters: T...) {
        for(index, parameter) in parameters.enumerated() {
            let key = "arg\(index)"
            routeParams[key] = parameter
        }
    }
}
