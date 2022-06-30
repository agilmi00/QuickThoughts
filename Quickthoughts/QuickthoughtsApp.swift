//
//  QuickthoughtsApp.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import SwiftUI

@main
struct QuickthoughtsApp: App {
    @StateObject var auth = Authentication(user: User())
    
    var body: some Scene {
        WindowGroup {
            if auth.loginStatus() {
                ContentView()
                    .environmentObject(auth)
            }
            else {
                LoginView()
                    .environmentObject(auth)
            }
        }
    }
}
