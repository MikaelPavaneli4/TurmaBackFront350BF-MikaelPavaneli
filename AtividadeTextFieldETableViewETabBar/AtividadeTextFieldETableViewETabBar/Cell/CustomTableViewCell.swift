//
//  CustomTableViewCell.swift
//  AtividadeTextFieldETableViewETabBar
//
//  Created by Mikael Rodrigues on 05/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var usuarioImage: UIImageView!
    @IBOutlet weak var usuarioLabel: UILabel!
   
    static let identifier: String = String(describing: CustomTableViewCell.self)
    static func nib() -> UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
}
    
    func setupCell(){
        
    }
    
}
