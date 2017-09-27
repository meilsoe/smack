//
//  LoginVC.swift
//  Smack
//
//  Created by Steffen Jordan Meilsoe on 9/27/17.
//  Copyright © 2017 Lucrement IVS. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //IBActions
    @IBAction func closePressed( sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
