//
//  ViewController.swift
//  Protocolo
//
//  Created by Mikael Rodrigues on 24/05/23.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var adicionarButton: UIButton!
    @IBOutlet weak var nomeTextField: UITextField!
    
    static let identifier = "ViewController"
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configTextFieldProtocols()
    }
    private func configTextFieldProtocols(){
        nomeTextField.delegate = self
    }
    
    @IBAction func tappedAdicionarButton(_ sender: UIButton) {
        dismiss(animated: true)
        
        NotificationCenter.default.post(name: .nome, object: nomeTextField.text)
        
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    
    
}
