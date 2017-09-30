//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Steffen Jordan Meilsoe on 9/27/17.
//  Copyright © 2017 Lucrement IVS. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Actions
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailText.text , emailText.text != "" else {
            return
        }
        guard let pass = passwordText.text , passwordText.text != "" else {
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            
            if success {
                print("Registered user!")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pictureBackgroundColorPressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    
    
}
