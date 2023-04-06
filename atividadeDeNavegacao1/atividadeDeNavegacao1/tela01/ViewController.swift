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
        let vc: UIViewController? = UIStoryboard(name: "tela02", bundle: nil).instantiateViewController(withIdentifier: "tela02") as? tela02
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
       // MARK: caso vc querira colocar sua tela modal em full Screen
       // vc?.modalPresentationStyle = .fullScreen
    }
    
}

