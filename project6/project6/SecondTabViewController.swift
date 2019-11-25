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
        self.view.backgroundColor = UIColor.red
        /*
        struct ScoreData : Codable{
            let player : String
            let game : String
            let score : Int
        }

        let score_to_load = ScoreData(player: "HlayreA", game: "testgamegetshellaced", score: 542)
        guard let uploadData = try? JSONEncoder().encode(score_to_load) else {
            return
        }
 */
        //MyNotes: important HTML -- the website below accepts arguments after the "?" just like any HTML page using a "?".  Altering the string after the "=" signs is what will allow us to post in this neatly packaged exercise.  May not need all of the functionality below.
        //This section should hopefully take the information from the first tab when it loads the contents into the Singleton and make them available to insert into the string here:
        /*
        let parse = Singleton.shared.downloaded_contents.components(separatedBy: "}")
       
        
        //This line of code isolates a string that can be appended to arguments of the URL request below.
        let urlarguments = "player=hlayreA" + "&game=whoa" + "&score=542"
        let url = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/postscore.php?" + urlarguments)!
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
         */
        
        

    }

    
    @IBAction func uploadPress(_ sender: Any) {
        print("button outlet loaded")
        
        let score = Int.random(in: 0...1000)
        //let urlarguments = "player=invadedscore" + "&game=pressrandombutton" + "&score=" + String(score)
        let urlarguments = "player=BAR" + "&game=asteroids" + "&score=" + String(score)
        let url = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/postscore.php?" + urlarguments)!
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        //request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        /*
        NSURLConnection.sendAsynchronousRequest(request, queue: OperationQueue.main) {(response, data, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }
         */
        task.resume()
        
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
