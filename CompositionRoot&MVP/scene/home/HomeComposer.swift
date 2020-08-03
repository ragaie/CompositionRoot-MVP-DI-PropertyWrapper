//
//  HomeResolver.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation

struct HomeComposer : Composer {
    func register() {
        Dependencies.root.add({HomeViewController() as HomeViewDelegate})
        Dependencies.root.add({HomePresenter() as HomePresenterDelegate})
    }
}
