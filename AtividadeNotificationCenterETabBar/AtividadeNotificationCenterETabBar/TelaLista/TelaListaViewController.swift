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
        view.backgroundColor = .brown
    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(), name: .nomeCadastro, object: nil)
    }

    private func configTableView(){
        listaTableView.delegate = self
        listaTableView.dataSource = self
        listaTableView.register(ListaTableViewCell.nib(), forCellReuseIdentifier: ListaTableViewCell.identifier)
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
