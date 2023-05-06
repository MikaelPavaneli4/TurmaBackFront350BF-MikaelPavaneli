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
   
    static let identifier: CustomTableViewCell.self
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
