//
//  tela06.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 06/04/23.
//

import UIKit

class tela06: UIViewController {
    @IBOutlet weak var voltarTela06Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func voltarTela06Button(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func voltarHomeTela06Button(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
