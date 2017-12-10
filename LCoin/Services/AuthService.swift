//
//  AuthService.swift
//  LCoin
//
//  Created by Татьяна Трофимова on 10.12.2017.
//  Copyright © 2017 Татьяна Трофимова. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    
    static let instance = AuthService()
    
    // Сохраняем авторизованного юзера
    
    let defaults = UserDefaults.standard
    
    var isLogged: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }
    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    
//    var userEmail: String {
//        get {
//            return defaults.value(forKey: USER_EMAIL) as! String
//        }
//        set {
//            defaults.set(newValue, forKey: USER_EMAIL)
//        }
//    }
//
    
    func registerUser(login: String, password: String, completition: @escaping CompletionHandler) {
        
        let lowerCaseLogin = login.lowercased()
        
        let header = [
            "Content-Type": "application/json"
        ]
        let body: [String: Any] = [
            "login": lowerCaseLogin,
            "password": password
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseJSON { (response) in
            
            if response.result.error == nil {
                completition(true)
            } else {
                completition(false)
                debugPrint(response.result.error as Any)
            }
        }
        
    }
    
    
    
}
