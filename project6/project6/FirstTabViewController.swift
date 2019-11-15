//
//  FirstTabViewController.swift
//  project6
//
//  Created by Joseph Daniel Ramli on 11/13/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit


class FirstTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.lightGray
        if let website = URL(string: "http://cs.binghamton.edu/~pmadden/courses/441score/getscores.php") {
            do{
                var label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
                label.center = CGPoint(x: 160, y: 284)
                label.textAlignment = NSTextAlignment.center
                label.text = "Website loaded!"
                self.view.addSubview(label)
                let contents = try String(contentsOf: website)
                print(contents)
            } catch{
                print("Website did not load properly")
            }
        }
        else{
            print("url was bad")
        }

    }
}
