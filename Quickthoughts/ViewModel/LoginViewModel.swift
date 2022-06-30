//
//  LoginViewModel.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import Foundation
import SwiftUI


class LoginViewModel: ObservableObject {
        
    func callAPI(user: User, username: String, password: String) async throws -> User {
        var user = User()
        
        if username != "" && password != "" {
            let urlSession = URLSession.shared
            
            let url = URL(string: "http://localhost:3000/user?id="+username)!
            
            let request = URLRequest(url: url)
            
            let (data, response) = try await urlSession.data(for: request)
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
    //                if let data = data {
                    let jStr = String(decoding: data, as: UTF8.self)
                    
                    let jsonData = Data(jStr.utf8)
                    let decodedData = try! JSONDecoder().decode([User].self, from: jsonData)
                    
                    user = decodedData[0]
                    print(decodedData[0])
        }
        else {
            // ERROR (To do)
        }
        return user
    }
}

