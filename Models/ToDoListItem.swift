//
//  Item.swift
//  ToDoList
//
//  Created by Giovanna Micher on 24/07/23.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval //when the user created the element
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
