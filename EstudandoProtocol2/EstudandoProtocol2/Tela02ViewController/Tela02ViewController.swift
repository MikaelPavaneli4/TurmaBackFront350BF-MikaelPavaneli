//
//  Tela02ViewController.swift
//  EstudandoProtocol2
//
//  Created by Mikael Rodrigues on 25/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var voltarButton: UIButton!
    @IBOutlet weak var nomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        dismiss(animated: true)
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as? ViewController
        vc?.delegate = self
    }
    
    
}
extension Tela02ViewController: ViewControllerProtocol{
    func tappedAdicionarButton(nome: String) {
        nomeLabel.text = nome
    }
   
    
}
