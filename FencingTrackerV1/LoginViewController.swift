//
//  LoginViewController.swift
//  FencingTrackerV1
//
//  Created by Earlight on 1/18/20.
//  Copyright © 2020 Richard. All rights reserved.
//
import LeanCloud
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    
    var name: String = ""
    
    override func viewDidLoad() {
        do {
            let testObject = LCObject(className: "Account")
            try testObject.set("test", value: "Hello world!")
            let result = testObject.save()
            if let error = result.error {
                print("do1234......\(error)")
            }
        } catch {
            print("catch1234......\(error)")
        }
        
        super.viewDidLoad()
        name = "slime"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.loginText.text = self.name
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.name = "richard"
    }
}
