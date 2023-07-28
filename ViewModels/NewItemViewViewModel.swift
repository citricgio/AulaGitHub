//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Giovanna Micher on 25/07/23.
//
import FirebaseAuth
import FirebaseFirestore //database
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false

    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        
        //Get current user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        // CREATE MODEL (create an instance of a to-do list item model)
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false)
        
        // SAVE MODEL (to the database)
        let db = Firestore.firestore() // get an instance of the database with a collection os users
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document("newId")
            .setData(newItem.asDictionary()) //dictionary
    }
    
    //validate item to save
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        //date is greater or equal to today
        //86400 seconds is how many seconds exists in a day
        //making sure de due day is greater or equal do yesterday
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
    
    
}
