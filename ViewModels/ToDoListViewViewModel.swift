//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Giovanna Micher on 25/07/23.
//
import FirebaseFirestore
import Foundation

//View Model for list of items view
//primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("user_id")
            .collection("todos")
            .document(id)
            .delete()
    }
}
