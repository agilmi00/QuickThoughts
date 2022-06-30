//
//  User.swift
//  Quickthoughts
//
//  Created by Cl0ud7.
//

import Foundation

struct User: Codable {
    var id: Int?    //UUID
    var name: String?
    
    init() {
      id = 0
      name = ""
    }
}
