//
//  ViewControllerEditar.swift
//  storyboardsE17
//
//  Created by Ricardo Licea on 8/28/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {
//outlets
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var bGuardar: UIButton!
    
    //variables
    var sNombre: String!
    var sEmail: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNombre.text = sNombre
        tfNombre.text = sEmail
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == bGuardar {
            let tfNombre.text! == "" || tfEmail.text == "" {
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos",preferredStyle: .alert)
                alerta.addAction("ok")
            }
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if sender as! UIButton == bGuardar{
                let viewIni = segue.destination as! ViewController
                viewIni.sNombre = tfNombre.text!
                viewIni.sEmail = tfEmail.text!
            }
    
    
    }
 

}
