//
//  DetailViewController.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , DetailViewDelegate{
   
    @Inject var myPresenter : DetailPresenterDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        myPresenter.requestData { (success, error) in
            //update screen with data
            print("data had been retrived form backend")
        }
        // Do any additional setup after loading the view.
    }
    
    func updateView() {
           print("update detailed screen is done")
       }
       
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
