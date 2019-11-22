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

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 284)
        label.textAlignment = NSTextAlignment.center
        //label.text = "Website loaded!"
        self.view.addSubview(label)
        
        self.view.backgroundColor = UIColor.lightGray
        if let website = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/getscores.php") {
            //cs.binghamton.edu/~pmadden/courses/441score/getscores.php
            //www.python.org
            //MyNotes: YOU MUST USE HTTPS NOT JUST HTTP because apple will block it if not with error code 1022
            do{
                let contents = try String(contentsOf: website)
                print(contents)
                print("Test Separator before printing the 'parse' below", String(16))
                Singleton.shared.downloaded_contents = contents
                let parse = Singleton.shared.downloaded_contents.components(separatedBy: "}")
                label.text = parse[2].components(separatedBy: ":")[2].components(separatedBy: ",")[0]
                
                
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
        var parse2 = parse[1].components(separatedBy: ":")
        print("Testing 'parse2' on next line")
        print(parse2)
        print("Next test of more subsection of parse2")
        print (parse2[1])
        print("combining parse commands all in one", parse[1].components(separatedBy: ":")[1].components(separatedBy: ",")[1])
        print("combining parse commands all in one", parse[1].components(separatedBy: ":")[1].components(separatedBy: ",")[0])
        print("combining parse commands all in one", parse[1].components(separatedBy: ":")[2].components(separatedBy: ",")[0]) //This line prints the game name (in this case, "asteroids"
        print("combining parse commands all in one", parse[1].components(separatedBy: ":")[3].components(separatedBy: ",")[0]) //This prints the score of the game (in this case line 2 since I used index [1] prints score of 45)
        
        var invaded_game_name = parse[1].components(separatedBy: ":")[2].components(separatedBy: ",")[0]
        var invaded_score = parse[1].components(separatedBy: ":")[3].components(separatedBy: ",")[0]
        
        print (invaded_game_name, " ", invaded_score) //This setup works for pulling a game name and score via the first index of parse, i,e. parse[1] above takes the score of the second row, parse[3] will take the third row.  Next line will test taking game "doesnt matter"
        //try pulling 6 and 9
        invaded_game_name = parse[6].components(separatedBy: ":")[2].components(separatedBy: ",")[0]
        invaded_score = parse[6].components(separatedBy: ":")[3].components(separatedBy: ",")[0]
         print (invaded_game_name, " ", invaded_score)
        invaded_game_name = parse[9].components(separatedBy: ":")[2].components(separatedBy: ",")[0]
        invaded_score = parse[9].components(separatedBy: ":")[3].components(separatedBy: ",")[0]
         print (invaded_game_name, " ", invaded_score)
        
        
    }
}
