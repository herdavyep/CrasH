//
//  AgregarProducto.swift
//  CrasH
//
//  Created by Heriberto David Yepes on 29/03/17.
//  Copyright © 2017 Heriberto David Yepes. All rights reserved.
//

import UIKit

class AgregarProducto: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate{
    
    @IBOutlet var imagenProducto: UIImageView!
    
    @IBOutlet var nombreProducto: UITextField!
    
    @IBOutlet var presentacionProducto: UITextField!
    
    @IBOutlet var precioProducto: UITextField!
    
    @IBOutlet var vencimientoOferta: UITextField!
    
    @IBOutlet var productosDisponibles: UITextField!
    
    @IBOutlet var porcentageDescuento: UITextField!
    
    @IBOutlet var idAlmacen: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nombreProducto.delegate = self
        self.presentacionProducto.delegate = self
        self.precioProducto.delegate = self
        self.vencimientoOferta.delegate = self
        self.productosDisponibles.delegate = self
        self.porcentageDescuento.delegate = self
        self.idAlmacen.delegate = self
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func GuardarProductos(_ sender: UIBarButtonItem) {
    }
    
    
    
    
    // MARK: - Table view data source
    
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                
                let imagePiker = UIImagePickerController()
                imagePiker.allowsEditing = false
                imagePiker.sourceType = .photoLibrary
                imagePiker.delegate = self
                
                self.present(imagePiker, animated: true, completion: nil)
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
        
        self.imagenProducto.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.imagenProducto.contentMode = .scaleAspectFill
        self.imagenProducto.clipsToBounds = true
        
        let reestriccionIzquierda = NSLayoutConstraint(item: self.imagenProducto, attribute: .leading, relatedBy: .equal, toItem: self.imagenProducto.superview, attribute: .leading, multiplier: 1, constant: 0)
        reestriccionIzquierda.isActive = true
        
        let reestriccionDerecha = NSLayoutConstraint(item: self.imagenProducto, attribute: .trailing, relatedBy: .equal, toItem: self.imagenProducto.superview, attribute: .trailing, multiplier: 1, constant: 0)
        reestriccionDerecha.isActive = true
        
        let reestriccionSuperior = NSLayoutConstraint(item: self.imagenProducto, attribute: .top, relatedBy: .equal, toItem: self.imagenProducto.superview, attribute: .top, multiplier: 1, constant: 0)
        reestriccionSuperior.isActive = true
        
        let reestriccionInferior = NSLayoutConstraint(item: self.imagenProducto, attribute: .bottom, relatedBy: .equal, toItem: self.imagenProducto.superview, attribute: .bottom, multiplier: 1, constant: 0)
        reestriccionInferior.isActive = true
        
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }*/
    

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
