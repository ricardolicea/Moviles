//
//  ViewController.swift
//  storyboardsE17
//
//  Created by Yolanda Martinez on 1/25/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //outlets
    @IBOutlet weak var imgFoto: UIImageView!
    
    @IBOutlet weak var tfNombre: UITextField!
    
    @IBOutlet weak var tfEmail: UITextField!
    
    //variables
    var sNombre: String!
    var sEmail: String!
    
    
    //funciones
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindInformacion (segueUnwind: UIStoryboardSegue){
        //vacia a propóstio por que no necesito recibir nada
    }
    
    @IBAction func unwindEditar(segueUnwind: UIStoryboardSegue){
        //aqui si ocupo regresar algo, ya que en la escena "Editar" ocupo la información que se edito
        tfNombre.text = sNombre
        tfEmail.text = sEmail
        
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "info" {
            let viewI = segue.destination as! ViewControllerInformacion
            viewI.foto = imgFoto.image!
            viewI.dAltura = imgFoto.frame.size.width
            viewI.dAltura = imgFoto.frame.size.height
        } else {
            let viewE = segue.destination as! ViewControllerEditar
            viewE.sNombre = tfNombre.text
            viewE.sEmail = tfEmail.text
            
        }
     }
    


}

