//
//  ViewController.swift
//  EstudandoProtocol2
//
//  Created by Mikael Rodrigues on 25/05/23.
//

import UIKit

protocol ViewControllerProtocol: AnyObject{
    func tappedAdicionarButton(nome: String)
}
class ViewController: UIViewController {

    
    weak var delegate: ViewControllerProtocol?
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var adicionarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeTextField.delegate = self
        
    }

    @IBAction func tappedAdicionarButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") as? Tela02ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        delegate?.tappedAdicionarButton(nome: nomeTextField.text ?? "")
        vc?.loadView()
    }
    
    
}

extension ViewController: UITextFieldDelegate{
    
}
