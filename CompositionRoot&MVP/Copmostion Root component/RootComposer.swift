//
//  RootComposer.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//
import Foundation
protocol Composer {
    func register()
}


struct RootComposer :Composer{
    func register() {
        HomeComposer().register()
        DetailComposer().register()
    }
}
