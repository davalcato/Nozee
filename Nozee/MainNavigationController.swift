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
        
        //We get the view if the user isn't logged in
        let isLoggedIn = true
        
        if isLoggedIn {
            //If the user is logged in
            let homeController = HomeController()
            viewControllers = [homeController]
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

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}













