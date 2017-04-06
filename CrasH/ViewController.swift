//
//  ViewController.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 25/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var almacenes: [Almacen] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var almacen = Almacen(nombre: "ara", imagen: #imageLiteral(resourceName: "ara"), direccion: "cra 3 # 20 -20", telefono: "2110099", ciudad: "Cartago",id_almacen: 1)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Super Inter", imagen: #imageLiteral(resourceName: "superinter") , direccion: "cra 7 # 13 -20", telefono: "2134567", ciudad: "Cartago", id_almacen: 2)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Exito", imagen: #imageLiteral(resourceName: "exito"), direccion: "cra 5 # 11 -20", telefono: "2224567", ciudad: "Cartago", id_almacen: 3)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Colsubsidio", imagen: #imageLiteral(resourceName: "colsubsidio") , direccion: "cra 10 # 13 -20", telefono: "2134567", ciudad: "Cartago", id_almacen: 4)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Metro", imagen: #imageLiteral(resourceName: "metro"), direccion: "calle 10 # 11 -20", telefono: "2213421", ciudad: "Cartago", id_almacen: 5)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Olimpica", imagen: #imageLiteral(resourceName: "olimpica") , direccion: "calle 14 # 13 -20", telefono: "2112233", ciudad: "Cartago", id_almacen: 6)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "Comfandi", imagen: #imageLiteral(resourceName: "comfandi"), direccion: "cra 3 # 17 -20", telefono: "2121155", ciudad: "Cartago", id_almacen: 7)
        almacenes.append(almacen)
        
        almacen = Almacen(nombre: "D1", imagen: #imageLiteral(resourceName: "d1"), direccion: "calle 10 # 9 -20", telefono: "2234466", ciudad: "Cartago", id_almacen: 8)
        almacenes.append(almacen)
        
        
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // funcion para agregar el numero de secciones o columnas que tendra la tabla
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    
    //funcion para agregar el numero de filas que tendra la tabla
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.almacenes.count
    }
    
    
    
    //funcion para mostrar el contenido que queramos en la celda
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let almacen = almacenes[indexPath.row]
        let celdaID = "CeldaDeAlmacen"
        
        let celda = tableView.dequeueReusableCell(withIdentifier: celdaID, for: indexPath) as! CeldaDeAlmacen
        
        
        celda.imagenAlmacen.image = almacen.imagen
        celda.nombreAlmacen.text = almacen.nombre
        celda.direccionAlmacen.text = almacen.direccion
        celda.ciudadAlmacen.text = almacen.ciudad
        celda.telefonoAlmacen.text = almacen.telefono
        
        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VerProductos" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                
                let recetaSeleccionada = self.almacenes[indexPath.row]
                
                let destinationViewController = segue.destination as! ProductosViewController
                
                destinationViewController.almacenId = recetaSeleccionada
            }
        }
    }



}

