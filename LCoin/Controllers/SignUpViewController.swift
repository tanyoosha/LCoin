//
//  SecondViewController.swift
//  LCoin
//
//  Created by Татьяна Трофимова on 09.12.2017.
//  Copyright © 2017 Татьяна Трофимова. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // Outlets
    @IBOutlet weak var loginTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        guard let login = loginTxt.text, loginTxt.text != "" else {
            return
        }
        guard let password = passwordTxt.text, passwordTxt.text != "" else {
            return
        }
        
        AuthService.instance.registerUser(login: login, password: password) { (success) in
            if success {
                AuthService.instance.loginUser(login: login, password: password, completition: { (success) in
                    if success {
                        print("Пользователь авторизован!")
                    }
                })
            }
        }
    }
}
