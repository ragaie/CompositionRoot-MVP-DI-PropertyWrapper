//
//  HomeConnections.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation

protocol HomeViewDelegate {
    func updateView()
}

protocol HomePresenterDelegate {
    func requestData(onCopmlete:((Bool,Error)->()))

}
