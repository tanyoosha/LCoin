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

        // Do any additional setup after loading the view.
    }

    @IBAction func toSignUpBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "toSecond", sender: nil)
    }
    
}
