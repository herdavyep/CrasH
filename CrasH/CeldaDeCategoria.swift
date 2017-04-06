//
//  CeldaDeCategoria.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 6/04/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CeldaDeCategoria: UITableViewCell {
    
    @IBOutlet var imagenCategoria: UIImageView!
    
    @IBOutlet var nombreCategoria: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
