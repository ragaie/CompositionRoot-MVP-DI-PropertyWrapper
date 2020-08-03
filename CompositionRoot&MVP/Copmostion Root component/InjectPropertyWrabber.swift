//
//  InjectPropertyWrabber.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//
import Foundation
@propertyWrapper
public struct Inject<Value> {
    
    public var wrappedValue: Value {
        Dependencies.root.resolve()
    }
    
    public init() {}
}
