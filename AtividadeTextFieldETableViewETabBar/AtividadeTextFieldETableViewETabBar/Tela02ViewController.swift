//
//  Tela02ViewController.swift
//  AtividadeTextFieldETableViewETabBar
//
//  Created by Mikael Rodrigues on 04/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    var listUser: [User] = []
    
    @IBOutlet weak var usuariosTableView: UITableView!
    @IBOutlet weak var adicionarButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fotoUsuarioImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
configElementos()
        configTableView(TableView: usuariosTableView)
        
    }
    @IBAction func tappedAdicionarButton(_ sender: UIButton) {
        if let name = nameTextField.text, !name.isEmpty{
            listUser.append(User(nameUser: nameTextField.text ?? "", imageUser: fotoUsuarioImage.image ?? UIImage()))
            usuariosTableView.reloadData()
        }
    }
    
    @IBAction func nameTextField(_ sender: UITextField) {
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
        TableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)

    }

}

extension Tela02ViewController: UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(user: listUser[indexPath.row])
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 164
    }
    
}

