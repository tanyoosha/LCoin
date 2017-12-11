//
//  FirstViewController.swift
//  LCoin
//
//  Created by Татьяна Трофимова on 09.12.2017.
//  Copyright © 2017 Татьяна Трофимова. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Outlets
    @IBOutlet weak var loginTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBAction func toSignUpBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_SIGN_UP, sender: nil)
    }
    
    @IBAction func LoginBtnPressed(_ sender: Any) {
        guard let login = loginTxt.text, loginTxt.text != "" else {
            return
        }
        guard let password = passwordTxt.text, passwordTxt.text != "" else {
            return
        }
        AuthService.instance.loginUser(login: login, password: password, completition: { (success) in
            if success {
                print("Пользователь авторизован!")
            }
        })
    }
}
