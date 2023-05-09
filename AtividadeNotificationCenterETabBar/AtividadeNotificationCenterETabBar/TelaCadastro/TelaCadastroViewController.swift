//
//  TelaCadastroViewController.swift
//  AtividadeNotificationCenterETabBar
//
//  Created by Mikael Rodrigues on 08/05/23.
//

import UIKit

//var getObject: TelaListaViewController = TelaListaViewController()

class TelaCadastroViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var cadastroTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        configButton()
        configTextField()
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        let vc: TelaListaViewController = TelaListaViewController()
        vc.listPerson.append(Person(name: cadastroTextField.text ?? ""))
        
    }
    
    private func configButton(){
        addButton.layer.borderWidth = 1
        addButton.layer.borderColor = UIColor.gray.cgColor
        addButton.setTitle("Adicionar", for: .normal)
        addButton.setTitleColor(.darkGray, for: .normal)
    }
    private func configTextField(){
        cadastroTextField.delegate = self
        cadastroTextField.placeholder = "Cadastre uma pessoa!!"
        cadastroTextField.layer.borderWidth = 1
        cadastroTextField.layer.borderColor = UIColor.lightGray.cgColor
        cadastroTextField.layer.masksToBounds = true
        cadastroTextField.clipsToBounds = true
        cadastroTextField.layer.cornerRadius = 5
    }

}

extension TelaCadastroViewController: UITextFieldDelegate {
    
}
