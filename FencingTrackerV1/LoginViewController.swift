//
//  LoginViewController.swift
//  FencingTrackerV1
//
//  Created by Earlight on 1/18/20.
//  Copyright © 2020 Richard. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    
    var name: String = ""
    
    override func viewDidLoad() {
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
