//
//  RegisterView.swift
//  ToDoList
//
//  Created by Giovanna Micher on 24/07/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // HEADER
            HeaderView(title: "Register", subtitle: "Start organizing things", angle: -15, background: .orange)
            
            // REGISTER FORM
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                //so that the first letter isnt capitalized
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account",
                         background: .green
                ){
                    // Attempt registration
                    viewModel.register()
                }
            }
            .offset(y: -50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
