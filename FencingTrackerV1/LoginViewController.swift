//
//  LoginViewController.swift
//  FencingTrackerV1
//
//  Created by Earlight on 1/18/20.
//  Copyright © 2020 Richard. All rights reserved.
//
import UIKit
import LeanCloud

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var loginText: UITextField!
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @IBAction func signIn(_ sender: UIButton) {
        guard let name = loginText.text, let password = passwordInput.text else {
            return
        }
        if name.isEmpty || password.isEmpty {
            print("未输入账号或者密码")
            return
        }
        do {
            let nameQuery = LCQuery(className: "Account")
            nameQuery.whereKey("name", .equalTo(name))
            let passwordQuery = LCQuery(className: "Account")
            passwordQuery.whereKey("password", .equalTo(password))
            let query = try nameQuery.and(passwordQuery)
            query.find { result in
                print("登录成功")
            }
        }catch {
            
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.name = "richard"
    }
}
