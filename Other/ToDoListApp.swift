//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Giovanna Micher on 24/07/23.
//

import SwiftUI
import SwiftUI
import FirebaseCore


@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
