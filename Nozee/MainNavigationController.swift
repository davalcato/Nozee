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
        view.backgroundColor = .white
        
        if isLoggedIn() {
            //If the user is logged in
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    
    }
    
    fileprivate func isLoggedIn() -> Bool {
        
        return false
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













