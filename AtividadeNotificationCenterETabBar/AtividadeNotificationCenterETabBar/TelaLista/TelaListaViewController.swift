//
//  TelaListaViewController.swift
//  AtividadeNotificationCenterETabBar
//
//  Created by Mikael Rodrigues on 08/05/23.
//

import UIKit

class TelaListaViewController: UIViewController {

    @IBOutlet weak var listaTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
configTableView()
        view.backgroundColor = .brown
    }
    

    private func configTableView(){
        listaTableView.delegate = self
        listaTableView.dataSource = self
        listaTableView.register(, forCellReuseIdentifier: <#T##String#>)
    }

}
extension TelaListaViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listaTableView.dequeueReusableCell(withIdentifier: , for: <#T##IndexPath#>)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    
    
}
