//
//  Ofertas.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 26/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//
import Foundation
import UIKit
import CoreData

//@objc(Productos)

class Productos: NSManagedObject {
    
    @NSManaged var nombre: String
    @NSManaged var presentacion: String
    @NSManaged var precio: Int
    @NSManaged var vencimientoOferta: Int
    @NSManaged var productosDisponibles: Int
    @NSManaged var porcentajeDescuento: Int
    @NSManaged var imagenProducto: NSData?
    @NSManaged var id_almacen: Int
    
   /* init(nombre:String,presentacion:String,precio:Int,vencimientoOferta:Int,productosDisponibles:Int,porcentajeDescuento:Int,imagenProducto:UIImage,id_almacen:Int) {
        
        self.nombre = nombre
        self.presentacion = presentacion
        self.precio = precio
        self.vencimientoOferta = vencimientoOferta
        self.productosDisponibles = productosDisponibles
        self.porcentajeDescuento = porcentajeDescuento
        self.imagenProducto = imagenProducto
        self.id_almacen = id_almacen
        
    }*/
    

}
