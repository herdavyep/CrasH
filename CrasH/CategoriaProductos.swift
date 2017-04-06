//
//  CategoriaProductos.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 6/04/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CategoriaProductos: NSObject {
    
    var id_categoria: Int!
    var nombreCategoria: String!
    var imagenCategoria: UIImage!
    //var id_almacen: Int = 1
    
    init(id_categoria: Int, nombreCategoria: String, imagenCategoria: UIImage) {
        
        self.id_categoria = id_categoria
        self.nombreCategoria = nombreCategoria
        self.imagenCategoria = imagenCategoria
        
    }

}
