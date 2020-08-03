//
//  DetailComposer.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation


struct DetailComposer : Composer {
    func register() {
        Dependencies.root.add({DetailViewController() as DetailViewDelegate})
        Dependencies.root.add({DetailPresenter() as DetailPresenterDelegate})
    }
}
