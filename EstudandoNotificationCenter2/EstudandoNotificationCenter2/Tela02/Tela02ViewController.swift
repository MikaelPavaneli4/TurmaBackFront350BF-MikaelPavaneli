//
//  Tela02ViewController.swift
//  EstudandoNotificationCenter2
//
//  Created by Mikael Rodrigues on 15/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    static let identifier = "Tela02ViewController"
    
    @IBOutlet weak var voltarButton: UIButton!
    @IBOutlet weak var nomeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func tappedVoltarButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        NotificationCenter.default.post(name: .texto, object: nomeTextField.text)
        
    }
    

    

}
