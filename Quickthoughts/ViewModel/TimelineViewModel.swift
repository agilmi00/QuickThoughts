//
//  TimelineViewModel.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import Foundation

@MainActor
class TimelineViewModel: ObservableObject {
    
    @Published var timelineQuickTs: [QuickT] = []
    @Published var timelineUsers: [String] = []

    func callAPI(userId: Int) async throws {
        
        let urlSession = URLSession.shared

        let url = URL(string: "http://localhost:3000/user/quickTs?id="+String(userId))!
        
        let request = URLRequest(url: url)
        
        let (data, response) = try await urlSession.data(for: request)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
                let jStr = String(decoding: data, as: UTF8.self)
                
                let jsonData = Data(jStr.utf8)
                timelineQuickTs = try! JSONDecoder().decode([QuickT].self, from: jsonData)
    }
}
