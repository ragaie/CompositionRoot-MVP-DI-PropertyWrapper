//
//  CompositionRoot.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation

class Dependencies {
    static var root = Dependencies()
    private var factories = [String: () -> Any]()
    
    func add<T>(_ factory: @escaping () -> T) {
        let key = String(describing: T.self)
        factories[key] = factory
    }

    func resolve<T>() -> T {
        let key = String(describing: T.self)
        
        guard let component: T = factories[key]?() as? T else {
            fatalError("Dependency '\(T.self)' not resolved!")
        }
        
        return component
    }
}



