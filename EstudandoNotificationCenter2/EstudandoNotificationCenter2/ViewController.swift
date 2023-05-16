//
//  ViewController.swift
//  EstudandoNotificationCenter2
//
//  Created by Mikael Rodrigues on 15/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var avancarButton: UIButton!
    @IBOutlet weak var nomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    }

    @IBAction func tappedAvancarButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: Tela02ViewController.identifier, bundle: nil).instantiateViewController(identifier: Tela02ViewController.identifier) as? Tela02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        navigationController?.navigationBar.isHidden = true
    }
    
    func addObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(tappedVoltarButton), name: .texto, object: nil )
    }
    
    @objc func tappedVoltarButton(){
        let textoTextField: String = nomeLabel.text ?? <#default value#>!
        textoTextField.append(.texto)
            
        
    }
    
}

