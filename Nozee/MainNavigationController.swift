//
//  MainNavigationController.swift
//  Nozee
//
//  Created by Daval Cato on 7/13/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let isLoggedIn = false
        
        if isLoggedIn {
            //If the user is logged in
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            //To code something here later
        })
        
    }
    
}















