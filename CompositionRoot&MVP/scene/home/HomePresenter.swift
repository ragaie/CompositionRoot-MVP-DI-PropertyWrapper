//
//  HomePresenter.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import Foundation

class HomePresenter: NSObject  , HomePresenterDelegate{
   @Inject var myView : HomeViewDelegate
   
   func requestData(onCopmlete: ((Bool, Error) -> ())) {
       myView.updateView()
   }
   
}
