//
//  LoginCell.swift
//  Nozee
//
//  Created by Daval Cato on 7/8/19.
//  Copyright © 2019 Daval Cato. All rights reserved.
//

import UIKit

class LoginCell: UIViewController {
    
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let loginRegistButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)

        view.addSubview(inputsContainerView)
        
        setupInputsContainerView()
    }
    
    func setupInputsContainerView() {
        //Need to specific x, y, width, height on the constraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    func setupLoginRegisterButton() {
        //Need x, y, width, height constraints
        
        loginRe
        
        
        
    }
    

     func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .lightContent
    }

}

extension UIColor {

    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }

}















//class LoginCell: UICollectionViewCell {
//
//    let logoImageView: UIImageView = {
//        let image = UIImage(named: "logo")
//        let imageView = UIImageView(image: image)
//        return imageView
//
//    }()
//
//    let emailTextField: LeftPaddedTextField = {
//        let textField = LeftPaddedTextField()
//        textField.placeholder = "Enter email"
//        textField.layer.borderColor = UIColor.lightGray.cgColor
//        textField.layer.borderWidth = 1
//        textField.keyboardType = .emailAddress
//        return textField
//
//    }()
//
//    let passwordTextField: LeftPaddedTextField = {
//        let textField = LeftPaddedTextField()
//        textField.placeholder = "Enter password"
//        textField.layer.borderColor = UIColor.lightGray.cgColor
//        textField.layer.borderWidth = 1
//        textField.isSecureTextEntry = true
//        return textField
//
//    }()
//
//    lazy var loginButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.backgroundColor = .orange
//        button.setTitle("Log in", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
//        return button
//    }()
//
//    weak var delegate: LoginControllerDelegate?
//    //This handles the touching of the Login Button
//    @objc func handleLogin() {
////        loginController?.finishLoggingIn()
//        delegate?.finishLoggingIn()
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        addSubview(logoImageView)
//        addSubview(emailTextField)
//        addSubview(passwordTextField)
//        addSubview(loginButton)
//
//        _ = logoImageView.anchor(centerYAnchor, left: nil, bottom: nil, right: nil, topConstant: -220, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 160, heightConstant: 160)
//        logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//
//        _ = emailTextField.anchor(logoImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 8, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
//
//        _ = passwordTextField.anchor(emailTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 16, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
//
//        _ = loginButton.anchor(passwordTextField.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 16, leftConstant: 32, bottomConstant: 0, rightConstant: 32, widthConstant: 0, heightConstant: 50)
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//class LeftPaddedTextField: UITextField {
//    override func textRect(forBounds bounds: CGRect) -> CGRect {
//       return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
//    }
//
//    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
//    }
//}

















