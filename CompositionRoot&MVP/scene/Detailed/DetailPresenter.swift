//
//  DetailPresenter.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation

class DetailPresenter: NSObject , DetailPresenterDelegate{
    @Inject var myView : DetailViewDelegate
    
    func requestData(onCopmlete: ((Bool, Error) -> ())) {
        myView.updateView()
    }
    
}
