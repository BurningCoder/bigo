//
//  RegisterViewController.swift
//  FencingTrackerV1
//
//  Created by Chausson on 2020/2/9.
//  Copyright © 2020 Richard. All rights reserved.
//

import UIKit
import LeanCloud

class RegisterViewController: UIViewController {
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var passwordConfirmInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupBtn.layer.cornerRadius = 20
        signupBtn.layer.borderWidth = 0.5
        signupBtn.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        do {
            let signUp = LCObject(className: "Account")
            try signUp.set("name", value: nameInput.text)
            try signUp.set("password", value: passwordInput.text)
            let result = signUp.save()
            if let error = result.error {
                print("do1234......\(error)")
            }
        } catch {
            print("catch1234......\(error)")
        }
    }
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
