//
//  TabBarController.swift
//  AtividadeNotificationCenterETabBar
//
//  Created by Mikael Rodrigues on 08/05/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
configTabBar()
        
    }
    

    func configTabBar(){
       
        guard let itens = tabBar.items else { return }
        
        itens[0].title = "Cadastro"
        itens[0].image = UIImage(systemName: "person")
       
        
        itens[1].title = "Lista"
        itens[1].image = UIImage(systemName: "list.bullet.clipboard")
        
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .darkGray
        tabBar.layer.borderWidth = 2
        tabBar.clipsToBounds = true
        tabBar.layer.cornerRadius = 3
        tabBar.layer.masksToBounds = true
    }
}
