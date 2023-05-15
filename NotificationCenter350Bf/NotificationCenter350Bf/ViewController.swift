//
//  ViewController.swift
//  NotificationCenter350Bf
//
//  Created by Mikael Rodrigues on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var cliqueAquiButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configObserver()
    }

    @IBAction func tappedCliqueAquiButton(_ sender: UIButton) {
        let vc: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
    
    func configObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(tappedMacbookButton), name: .alteracoes, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(tappedImacButton), name: .mudancas, object: nil)
       
    }
    
    @objc func tappedMacbookButton(){
        nomeLabel.text = "MacBook é muito foda"
        view.backgroundColor = .blue
        logoImage.image = UIImage(systemName: "person")
        logoImage.layer.backgroundColor = UIColor.red.cgColor
        logoImage.clipsToBounds = true
        logoImage.layer.cornerRadius = 100
        logoImage.layer.masksToBounds = true
    }
    
    @objc func tappedImacButton(){
        nomeLabel.text = "Imac é muito foda"
        view.backgroundColor = .yellow
        logoImage.image = UIImage(named: "ryu")
        logoImage.layer.backgroundColor = UIColor.lightGray.cgColor
        logoImage.clipsToBounds = true
        logoImage.layer.cornerRadius = 50
        logoImage.layer.masksToBounds = true
    }
   
}

