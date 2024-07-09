//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Grace Co on 2024-07-05.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields!"
            print(errorMessage)
            return
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            print(errorMessage)
            return
        }
        
        // Call authentication service here
        print("Login successful")
    }
    
//    func validate() {
//        
//    }
}
