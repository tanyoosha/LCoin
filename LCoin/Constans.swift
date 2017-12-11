//
//  Constans.swift
//  LCoin
//
//  Created by Татьяна Трофимова on 10.12.2017.
//  Copyright © 2017 Татьяна Трофимова. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()


// Segues
let TO_SIGN_UP = "toSignUp"

//URL Constans
let BASE_URL = "http://89.36.215.144/"
let URL_REGISTER = "\(BASE_URL)register"
let URL_LOGIN = "\(BASE_URL)login"


// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let HEADER = [
    "Content-Type": "application/json"
]

//let USER_EMAIL = "userEmail"
