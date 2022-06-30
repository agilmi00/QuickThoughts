//
//  NewQuickTViewModel.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import Foundation

class NewQuickTViewModel:  ObservableObject {
    
    @Published var text = ""
    
    func callAPI(userId: Int, completion: @escaping (NSString) -> Void) {

        let urlSession = URLSession.shared
        let url = URL(string: "http://localhost:3000/newQuickT")!
        
        // Add data to the model
        let dataUp = QuickT(id: 1, text: text, userId: userId)
        
        // Convert model to JSON data
        guard let jsonData = try? JSONEncoder().encode(dataUp) else {
           print("Error: Trying to convert model to JSON data")
           return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // the request is JSON
        request.setValue("application/json", forHTTPHeaderField: "Accept") // the response expected to be in JSON format

        request.httpBody = jsonData
        urlSession.dataTask(with: request) { data, res, error in
            let jStr = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            completion(jStr!)
        }
        .resume()
        text = ""
    }
}

