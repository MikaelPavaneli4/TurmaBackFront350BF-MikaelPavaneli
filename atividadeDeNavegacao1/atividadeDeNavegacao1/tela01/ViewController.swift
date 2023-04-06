//
//  ViewController.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var entrarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func entrarButton(_ sender: UIButton) {
        performSegue(withIdentifier: "tela02", sender: nil)
        
    }
    
}

