//
//  FirebaseControl.swift
//  Chat shat
//
//  Created by Piyush Agrawal on 12/05/22.
//

import Foundation
import FirebaseAuth
class FirebaseControl {
    static let fc = FirebaseControl()
    
    func registerUser(withEmail email: String, password: String) {
        FirebaseAuth.Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            guard let result = authResult, error == nil else {
                print("Error in creating user")
                return
            }
            let user = result.user
            print("Create User \(user)")
        }
    }
    
    func loginUser(withEmail email: String, password: String) {
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            guard let result = authResult, error == nil else {
                print("Error in user credentials")
                return
            }
            let user = result.user
            print("Success \(user)")
        }
    }
}
