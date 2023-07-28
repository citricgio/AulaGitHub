//
//  ContentViewViewModel.swift
//  ToDoList
//
//  Created by Giovanna Micher on 25/07/23.
//
import FirebaseAuth
import Foundation

class ContentViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener {[weak self]_, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        //if it doesnt equal nil, meaning theres a value for the current user, that means we're signed in
        return Auth.auth().currentUser != nil
    }
}
