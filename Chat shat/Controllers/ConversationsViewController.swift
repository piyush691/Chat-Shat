//
//  ViewController.swift
//  Chat shat
//
//  Created by Piyush Agrawal on 12/05/22.
//

import UIKit
import FirebaseAuth
class ConversationsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //Set userDefault to check weather user is login or not
        validateAuth()
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc) // set as rootVC
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
}

