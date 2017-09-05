//
//  ViewController.swift
//  cuerposGeometricos
//
//  Created by Ricardo Licea on 8/31/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var labInformacion: UILabel!
    
    @IBOutlet weak var labVolumen: UILabel!
    @IBOutlet weak var imgInicial: UIImageView!
    @IBAction func btInicio(_ sender: Any) {
        labInformacion.text = ""
        labVolumen.text  = "Volumen: "
        imgInicial.image = #imageLiteral(resourceName: "figuras")
    }
    
    var informacion : String = ""
    var volumen: String = ""
    var image : UIImage = #imageLiteral(resourceName: "figuras")
    
    //acciones
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindEsfera(unwindSegue : UIStoryboardSegue){
        labInformacion.text = "Radio: " + informacion
        labVolumen.text = "Volumen: " + volumen
    }
    
    @IBAction func unwindPrisma(unwindSegue : UIStoryboardSegue){
        labInformacion.text = informacion
        labVolumen.text = "Volumen: " + volumen
        imgInicial.image = image
        
    }


}

