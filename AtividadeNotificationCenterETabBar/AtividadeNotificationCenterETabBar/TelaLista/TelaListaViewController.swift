//
//  TelaListaViewController.swift
//  AtividadeNotificationCenterETabBar
//
//  Created by Mikael Rodrigues on 08/05/23.
//

import UIKit

class TelaListaViewController: UIViewController {

    var listPerson: [Person] = []
    
    @IBOutlet weak var listaTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
configTableView()
        configObserver()
        view.backgroundColor = .gray
        navigationController?.navigationBar.isHidden = true
    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(updateName), name: .nomeCadastro, object: nil)
    }

    @objc func updateName(_ notification: NSNotification){

        let nome = notification.object as? String
        listPerson.append(Person(name: nome ?? ""))
        listaTableView.reloadData()
    
    }
    
    private func configTableView(){
        listaTableView.delegate = self
        listaTableView.dataSource = self
        listaTableView.register(ListaTableViewCell.nib(), forCellReuseIdentifier: ListaTableViewCell.identifier)
        listaTableView.layer.backgroundColor = UIColor.gray.cgColor
        listaTableView.clipsToBounds = true
        listaTableView.layer.cornerRadius = 10
    
        
    }

}
extension TelaListaViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listaTableView.dequeueReusableCell(withIdentifier: ListaTableViewCell.identifier, for: indexPath) as? ListaTableViewCell
        cell?.setupCell(person: listPerson[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    
   
    
}
