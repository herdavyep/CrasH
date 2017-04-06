//
//  Almacenes.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 25/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//
import Foundation
import UIKit

class Almacen: NSObject {
    
    var nombre: String!
    var imagen: UIImage!
    var direccion: String!
    var telefono: String!
    var ciudad: String!
    var id_almacen: Int!
    
    init(nombre: String, imagen: UIImage, direccion: String, telefono: String, ciudad: String, id_almacen: Int) {
        
        self.nombre = nombre
        self.imagen = imagen
        self.direccion = direccion
        self.telefono = telefono
        self.ciudad = ciudad
        self.id_almacen = id_almacen
    }
}
