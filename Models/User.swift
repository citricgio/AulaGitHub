//
//  User.swift
//  ToDoList
//
//  Created by Giovanna Micher on 24/07/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
