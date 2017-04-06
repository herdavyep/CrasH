//
//  CeldaDeProducto.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 26/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CeldaDeProducto: UITableViewCell {
    
    @IBOutlet var imagenProducto: UIImageView!
    
    @IBOutlet var nombreProducto: UILabel!
    
    @IBOutlet var presentacionProducto: UILabel!
    
    @IBOutlet var precioProducto: UILabel!
    
    @IBOutlet var vencimientoOferta: UILabel!
    
    @IBOutlet var productosDisponibles: UILabel!
    
    @IBOutlet var porcentajeDescuento: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
