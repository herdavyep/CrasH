//
//  CategoriaViewController.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 6/04/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class CategoriaViewController: UITableViewController {
    
    var almacen: Almacen!
    
    var categorias: [CategoriaProductos] = []
    
    var categ: CategoriaProductos!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = almacen.nombre
        
        var categoria = CategoriaProductos(id_categoria: 1,nombreCategoria: "Lacteos", imagenCategoria: #imageLiteral(resourceName: "lacteos"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 2,nombreCategoria: "Granos", imagenCategoria: #imageLiteral(resourceName: "granos"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 3,nombreCategoria: "Enlatados", imagenCategoria: #imageLiteral(resourceName: "enlatados"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 4,nombreCategoria: "Pasta", imagenCategoria: #imageLiteral(resourceName: "pasta"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 5,nombreCategoria: "Aseo", imagenCategoria: #imageLiteral(resourceName: "aseo"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 6,nombreCategoria: "Frutas", imagenCategoria: #imageLiteral(resourceName: "frutas"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 7,nombreCategoria: "Verduras", imagenCategoria: #imageLiteral(resourceName: "verduras"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 8,nombreCategoria: "Carnes", imagenCategoria: #imageLiteral(resourceName: "carne"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 9,nombreCategoria: "Embutidos", imagenCategoria: #imageLiteral(resourceName: "embutidos"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 10,nombreCategoria: "Panes", imagenCategoria: #imageLiteral(resourceName: "pan"))
        categorias.append(categoria)
        
        categoria = CategoriaProductos(id_categoria: 11,nombreCategoria: "Otros", imagenCategoria: #imageLiteral(resourceName: "otros"))
        categorias.append(categoria)
        
        
        
        
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
        
        return self.categorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let categoria = categorias[indexPath.row]
        let celdaID = "CeldaDeCategoria"
        
        let celda = tableView.dequeueReusableCell(withIdentifier: celdaID, for: indexPath) as! CeldaDeCategoria
        
        celda.imagenCategoria.image = categoria.imagenCategoria
        celda.nombreCategoria.text = categoria.nombreCategoria
        
        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VerProductos" {
            
           
            if let indexPath = self.tableView.indexPathForSelectedRow{
            
                let recetaSeleccionada2 = self.categorias[indexPath.row]
            
                let destinationViewController2 = segue.destination as! ProductosViewController
            
                destinationViewController2.categoria = recetaSeleccionada2
            
            
            }
            
            let recetaSeleccionada = almacen //self.almacenes[indexPath.row]
            
            let destinationViewController = segue.destination as! ProductosViewController
            
            destinationViewController.almacenId = recetaSeleccionada

        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
