//
//  CeldaDeAlmacen.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 25/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CeldaDeAlmacen: UITableViewCell {
    
    @IBOutlet var imagenAlmacen: UIImageView!
    
    @IBOutlet var nombreAlmacen: UILabel!
    
    @IBOutlet var direccionAlmacen: UILabel!
    
    @IBOutlet var ciudadAlmacen: UILabel!

    @IBOutlet var telefonoAlmacen: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
