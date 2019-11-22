//
//  SecondTabViewController.swift
//  project6
//
//  Created by Joseph Daniel Ramli on 11/13/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import UIKit

class SecondTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view loaded now try upload")

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.purple
        
        struct ScoreData : Codable{
            let player : String
            let game : String
            let score : Int
        }

        let score_to_load = ScoreData(player: "HlayreA", game: "testgamegetshellaced", score: 542)
        guard let uploadData = try? JSONEncoder().encode(score_to_load) else {
            return
        }
        let url = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/postscore.php?player=joetest1&game=asteroids&score=43")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.uploadTask(with: request, from: uploadData) { data, response, error in
            if let error = error {
                print ("error: \(error)")
                return
            }
            guard let response = response as? HTTPURLResponse,
                (200...299).contains(response.statusCode) else {
                print ("server error")
                return
            }
            if let mimeType = response.mimeType,
                mimeType == "application/json",
                let data = data,
                let dataString = String(data: data, encoding: .utf8) {
                print ("got data: \(dataString)")
            }
        }
        task.resume()
        
        if let website = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/getscores.php") {
            //cs.binghamton.edu/~pmadden/courses/441score/getscores.php
            //www.python.org
            //MyNotes: YOU MUST USE HTTPS NOT JUST HTTP because apple will block it if not with error code 1022
            do{
                let contents = try String(contentsOf: website)
                print(contents)
                print("printing game name below, should modify 0?")
                Singleton.shared.downloaded_contents = contents
                let parse = Singleton.shared.downloaded_contents.components(separatedBy: "}")
                print(parse[0].components(separatedBy: ":")[2].components(separatedBy: ",")[0])
                
                
            } catch{
                print("Website did not load properly")
            }
        }
        else{
            print("url was bad")
        }

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
