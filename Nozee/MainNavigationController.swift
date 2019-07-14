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
            //If the user is logged into the app the user screen displays
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    
    }
    
    fileprivate func isLoggedIn() -> Bool {
        
        return true
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
       
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 54, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
    }
}













