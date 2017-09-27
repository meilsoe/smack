//
//  ChannelVC.swift
//  Smack
//
//  Created by Steffen Jordan Meilsoe on 9/27/17.
//  Copyright © 2017 Lucrement IVS. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlets
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //STM: Remove this addition for future projects, where you want to see more of the underlying slide
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    //IBActions
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    
    
}
