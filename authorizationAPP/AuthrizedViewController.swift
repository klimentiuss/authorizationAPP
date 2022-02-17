//
//  AuthrizedViewController.swift
//  authorizationAPP
//
//  Created by user on 17.02.2022.
//

import UIKit

class AuthrizedViewController: UIViewController {

    @IBOutlet weak var welcomeNameLabel: UILabel!
    
    var welcomeName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeNameLabel.text = welcomeName + "!"
        navigationItem.setHidesBackButton(true, animated: false)
    }
    

   

}
