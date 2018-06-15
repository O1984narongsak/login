//
//  ViewController.swift
//  login
//
//  Created by Narongsak Luanwijit on 8/6/2561 BE.
//  Copyright © 2561 Narongsak Luanwijit. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    let emailTextField: UITextField = {
        let e = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        
        e.textColor = .white
        e.attributedPlaceholder = attributedPlaceholder
        e.backgroundColor = GREEN_THEME
        return e
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        let attributedPlaceholder = NSMutableAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
        
        p.textColor = .white
        p.isSecureTextEntry = true
        p.attributedPlaceholder = attributedPlaceholder
        p.backgroundColor = GREEN_THEME
        return p
    }()
    
    let loginButton: UIButton = {
        let l = UIButton(type: .system)
        l.setTitleColor(.white, for: .normal)
        l.setTitle("Log In", for: .normal)
        l.backgroundColor = DARK_GREEN
        return l
    }()
    
    let forgotPassword: UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)
        f.setTitle("Forgot Password", for: .normal)
        f.backgroundColor = GREEN_THEME
        return f
    }()
    
    let haveAccountButton: UIButton = {
        
        let color = DARK_GREEN
        let font = UIFont.systemFont(ofSize: 14)
        
        let h = UIButton(type: .system)
        h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Dont Have an account?", attributes: [NSAttributedStringKey.foregroundColor: color, NSAttributedStringKey.font : font])
        
        attributedTitle.append(NSAttributedString(string: " Sign Up", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white,NSAttributedStringKey.font : font]))
        
        h.addTarget(self, action: #selector(signupAction), for: .touchUpInside)
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponents()
        setuploginButton()
        setupHaveAccountButton()
        setupForgotPssButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    fileprivate func setupTextFieldComponents(){
    setupEmailField()
    setupPasswordField()
    }
    
    @objc func signupAction() {
    }
    
    fileprivate func setupEmailField(){
        view.addSubview(emailTextField)
        
        emailTextField.anchors(top: nil, topPad: 0, bottom: nil, buttomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, height: 30, width: 0)
        
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    fileprivate func setupPasswordField(){
        view.addSubview(passwordTextField)
        
      passwordTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil, buttomPad: 0, left: emailTextField.leftAnchor, leftPad: 0, right: emailTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    fileprivate func setuploginButton(){
        view.addSubview(loginButton)
        
     loginButton.anchors(top: passwordTextField.bottomAnchor, topPad: 0, bottom: nil, buttomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0, right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)
        
    }
    fileprivate func setupForgotPssButton(){
        view.addSubview(forgotPassword)
        
    forgotPassword.anchors(top: loginButton.bottomAnchor, topPad: 0, bottom: nil, buttomPad: 0, left: loginButton.leftAnchor, leftPad: 0, right: loginButton.rightAnchor, rightPad: 0, height: 30, width: 0)
        
    }
    
    fileprivate func setupHaveAccountButton(){
        view.addSubview(haveAccountButton)
        
      haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, buttomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, height: 30, width: 0)
    }
}

