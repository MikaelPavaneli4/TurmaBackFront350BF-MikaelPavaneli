//
//  ViewController.swift
//  PrimeiroProjetoViewCode350BF
//
//  Created by Mikael Rodrigues on 16/05/23.
//

import UIKit

class LoginViewController: UIViewController {

    var screen: LoginScreen?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen = LoginScreen()
        view = screen
        
    }


}

