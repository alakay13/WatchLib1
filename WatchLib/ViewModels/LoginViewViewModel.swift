//
//  LoginViewViewModel.swift
//  WatchLib
//
//  Created by Alaa Khan on 2/12/25.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errmsg = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        //Authenticating
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errmsg = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errmsg = "Please make sure all fields are filled."
        
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errmsg = "Please enter a valid email."
            return false
        }
        return true
    }
}
