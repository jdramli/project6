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
        if let website = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/getscores.php") {
            //cs.binghamton.edu/~pmadden/courses/441score/getscores.php
            //www.python.org
            //MyNotes: YOU MUST USE HTTPS NOT JUST HTTP because apple will block it if not with error code 1022
            do{
                let contents = try String(contentsOf: website)
                print(contents)
                print("Test Separator before printing the 'parse' below", String(16))
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
                label.center = CGPoint(x: 160, y: 284)
                label.textAlignment = NSTextAlignment.center
                //label.text = "Website loaded!"
                label.text = contents
                self.view.addSubview(label)
                Singleton.shared.downloaded_contents = contents
                
            } catch{
                print("Website did not load properly")
            }
        }
        else{
            print("url was bad")
        }
        
        let parse = Singleton.shared.downloaded_contents.components(separatedBy: "}")
        print(parse)
        print("Next separator to test indexing into the split string")
        print(parse[1])
        let parse2 = parse[1].components(separatedBy: ":")
        print("Testing 'parse2' on next line")
        print(parse2)

    }
}
