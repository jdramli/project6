//
//  TabViewController.swift
//  project6
//
//  Created by Joseph Daniel Ramli on 11/25/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.items?[0].title = "Upload Score"
        self.tabBarController?.tabBar.items?[1].title = "Upload Score"
        self.tabBarController?.tabBar.items?[2].title = "Upload Score"
        // Do any additional setup after loading the view.
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
