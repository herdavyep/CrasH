//
//  Ofertas.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 26/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class Productos: NSObject {
    
    var nombre: String!
    var presentacion: String!
    var precio: Int!
    var vencimientoOferta: Int!
    var productosDisponibles: Int!
    var porcentajeDescuento: Int!
    var imagenProducto: UIImage!
    var id_almacen: Int!
    
    init(nombre:String,presentacion:String,precio:Int,vencimientoOferta:Int,productosDisponibles:Int,porcentajeDescuento:Int,imagenProducto:UIImage,id_almacen:Int) {
        
        self.nombre = nombre
        self.presentacion = presentacion
        self.precio = precio
        self.vencimientoOferta = vencimientoOferta
        self.productosDisponibles = productosDisponibles
        self.porcentajeDescuento = porcentajeDescuento
        self.imagenProducto = imagenProducto
        self.id_almacen = id_almacen
        
    }
    

}
