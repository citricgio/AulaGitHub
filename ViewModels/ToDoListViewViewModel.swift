//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Giovanna Micher on 25/07/23.
//

import Foundation

//View Model for list of items view
//primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
