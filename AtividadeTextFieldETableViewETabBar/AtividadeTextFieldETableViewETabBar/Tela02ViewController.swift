//
//  Tela02ViewController.swift
//  AtividadeTextFieldETableViewETabBar
//
//  Created by Mikael Rodrigues on 04/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var usuariosTableView: UITableView!
    @IBOutlet weak var adicionarButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fotoUsuarioImage: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
configElementos()
        configTableView(TableView: usuariosTableView)
        
    }
    
    func configElementos(){
        nameLabel.text = "Nome:"
        nameLabel.textColor = UIColor.gray
        nameTextField.delegate = self
        nameTextField.placeholder = "Coloque o nome de usuario"
        nameTextField.layer.cornerRadius = 10
        nameTextField.layer.borderWidth = 2
        adicionarButton.layer.cornerRadius = 10
        adicionarButton.clipsToBounds = true
        adicionarButton.setTitle("Adicionar", for: .normal)
        adicionarButton.layer.borderColor = UIColor.blue.cgColor
        adicionarButton.layer.borderWidth = 3
    }
    
    func configTableView(TableView: UITableView){
        TableView.dataSource = self
        TableView.delegate = self
        
    }

}

extension Tela02ViewController: UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        <#code#>
//    }
    
}

