//
//  DetailConnections.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation
protocol DetailViewDelegate {
    func updateView()
}

protocol DetailPresenterDelegate {
    func requestData(onCopmlete:((Bool,Error)->()))

}
