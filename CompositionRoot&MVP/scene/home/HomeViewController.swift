//
//  ViewController.swift
//  CompositionRoot&MVP
//
//  Created by Ragaie Alfy on 8/3/20.
//  Copyright © 2020 Ragaie Alfy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , HomeViewDelegate{

 @Inject var myPresenter : HomePresenterDelegate
 override func viewDidLoad() {
     super.viewDidLoad()
     myPresenter.requestData { (success, error) in
         //update screen with data
         print("data had been retrived form backend")
     }
     // Do any additional setup after loading the view.
 }
    @IBAction func show(_ sender: Any) {
        
        let story = UIStoryboard(name: "Main", bundle:nil)
          let vc = story.instantiateViewController(withIdentifier: "DetailViewControllerID") as! DetailViewController
          UIApplication.shared.windows.first?.rootViewController = vc
          UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
 func updateView() {
        print("update screen is done")
    }
    

}

