//
//  Authentication.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import Foundation

class Authentication: ObservableObject {
    
    @Published var user: User
    @Published var logged = false
    
    init(user: User) {
        self.user = user
    }
    
    func loginStatus() -> Bool {
        if user.id != 0 {
            return true
        }
        else {
//            print("user: ",user.id)
            return false
        }
    }
    func logS() {
        logged = true
    }
}
