//
//  ProductosViewController.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 26/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class ProductosViewController: UITableViewController {
    
        
    var almacenId: Almacen!
    
    var productos: [Productos] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.title = almacenId.nombre
        
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
                
        var producto : Productos!
        
        switch almacenId.id_almacen {
        case 1:
            
            producto = Productos(nombre:"Azucar",presentacion: "500g",precio:2900,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "azucar"),id_almacen:1)
            productos.append(producto)
            
            producto = Productos(nombre:"Sal",presentacion: "500g",precio:1500,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "sal"),id_almacen:1)
            productos.append(producto)
            
        case 2:
            
            producto = Productos(nombre:"Sal",presentacion: "500g",precio:1600,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "sal"),id_almacen:2)
            productos.append(producto)
            
        case 3:
            
            producto = Productos(nombre:"Sal",presentacion: "500g",precio:1500,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "sal"),id_almacen:3)
            productos.append(producto)
            
        case 4:
            
            producto = Productos(nombre:"Arroz",presentacion: "500g",precio:2000,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "arroz diana"),id_almacen:4)
            productos.append(producto)
            
        case 5:
            
            producto = Productos(nombre:"Arroz",presentacion: "500g",precio:2100,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "arroz diana"),id_almacen:5)
            productos.append(producto)
            
        case 6:
            
            producto = Productos(nombre:"Aceite",presentacion: "500g",precio:1500,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "aceite"),id_almacen:6)
            productos.append(producto)
            
        case 7:
            producto = Productos(nombre:"Panela",presentacion: "500g",precio:1500,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "panela"),id_almacen:7)
            productos.append(producto)

            
        case 8:
            
            producto = Productos(nombre:"Lentejas",presentacion: "500g",precio:1100,vencimientoOferta:15,productosDisponibles:30,porcentajeDescuento:30,imagenProducto:#imageLiteral(resourceName: "lentejas"),id_almacen:8)
            productos.append(producto)
            
            
        default:
            break
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.productos.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        
        let producto = productos[indexPath.row]
        let celdaID = "CeldaDeProducto"

        let celda = tableView.dequeueReusableCell(withIdentifier: celdaID, for: indexPath) as! CeldaDeProducto
        
        switch producto.id_almacen {
            
        case 1:
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = "Presentacion: \(producto.presentacion!)"
            celda.precioProducto.text = "Precio: $\(producto.precio!) pesos"
            celda.porcentajeDescuento.text = "-\(producto.porcentajeDescuento!)%"
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = "Oferta vence en: \(producto.vencimientoOferta!) dias"

        /*case 2:
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)

        case 3:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)

        case 4:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)
            
        case 5:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)
            
        case 6:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)
            
        case 7:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)
            
        case 8:
            
            celda.imagenProducto.image = producto.imagenProducto
            celda.nombreProducto.text = producto.nombre
            celda.presentacionProducto.text = producto.presentacion
            celda.precioProducto.text = String(producto.precio)
            celda.porcentajeDescuento.text = String(producto.porcentajeDescuento)
            celda.productosDisponibles.text = String(producto.productosDisponibles)
            celda.vencimientoOferta.text = String(producto.vencimientoOferta)*/
            
        default:
            break
        }
        
        
        return celda
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    @IBAction func unwindSegueProductos(segue: UIStoryboardSegue) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
