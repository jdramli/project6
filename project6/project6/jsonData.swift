//
//  jsonData.swift
//  project6
//
//  Created by Joseph Daniel Ramli on 11/18/19.
//  Copyright © 2019 Joseph Daniel Ramli. All rights reserved.
//

import Foundation

struct ScoreData : Codable{
    let player : String
    let game : String
    let score : Int
}

/*
let score_to_load = ScoreData(player: "HlayreA", game: "testgamegetshellaced", score: 542)
let url = URL(string: "https://cs.binghamton.edu/~pmadden/courses/441score/getscores.php")!
var request = URLRequest(url: url)
request.httpMethod = "POST"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
*/
/*
//Code from //https://developer.apple.com/documentation/foundation/url_loading_system/uploading_data_to_a_website
 

 
struct Order: Codable {
    let customerId: String
    let items: [String]
 // Order now supports the Codable methods init(from:) and encode(to:),
 // even though they aren't written as part of its declaration.
}
 
 //example data from CS database website:
 //{"player":"XYZ","game":"doesntmatter","score":"43"},
 //{"player":"bar","game":"asteroids","score":"43"}

// ...
//Listing 1
let order = Order(customerId: "12345",
                  items: ["Cheese pizza", "Diet soda"])
guard let uploadData = try? JSONEncoder().encode(order) else {
    print("UPLOAD FAILED") //I added this line.
    return
}

 //Listing 2
 //Configuring a URL request
let url = URL(string: "https://example.com/post")!
var request = URLRequest(url: url)
request.httpMethod = "POST"
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
 
 //Listing 3
 //Starting an upload task
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
