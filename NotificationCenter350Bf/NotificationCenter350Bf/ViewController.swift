//
//  ViewController.swift
//  NotificationCenter350Bf
//
//  Created by Mikael Rodrigues on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cliqueAquiButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedCliqueAquiButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

