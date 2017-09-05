//
//  ViewController.swift
//  tarea01-triangulos
//
//  Created by Ricardo Licea on 8/15/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //OUTLETS
    @IBOutlet weak var sSwitchText: UISwitch! //outlet del switch
    @IBOutlet weak var bButton: UIButton! //outlet del boton
    @IBOutlet weak var tfLado1: UITextField! //outlet del lado 1
    @IBOutlet weak var tfLado2: UITextField! //outlet del lado 2
    @IBOutlet weak var tfLado3: UITextField! //outlet del lado 3
    @IBOutlet weak var imgTriangulo: UIImageView! //outlet de la imagen
    @IBOutlet weak var lLabel: UILabel! //label con tipo o area
    
    //FUNCIONES
    //funcion para cambiar el texto del boton
    func cambiarBoton(){
        if sSwitchText.isOn {
            
            lLabel.text = "El triangulo es: "
            bButton.setTitle("Tipo de triangulo", for: .normal)
        } else {
            
            bButton.setTitle("Calcular area", for: .normal)
            imgTriangulo.isHidden = true
            
        }
    }
    
    //funcion para cambiar las imagenes
    func calcular(){
        let dLado1 = Double(tfLado1.text!)
        let dLado2 = Double(tfLado2.text!)
        let dLado3 = Double(tfLado3.text!)
        
        //verifica si hay valores aceptados
        if( dLado1 != nil && dLado2 != nil && dLado3 != nil && dLado1! > 0.0 && dLado2! > 0.0 && dLado3! > 0){
            //decide si calcula area o muestra tipo de triangulo
            if sSwitchText.isOn{
                imgTriangulo.isHidden = true;
                //equilatero
                if dLado1 == dLado2 && dLado1 == dLado3 {
                    imgTriangulo.image = #imageLiteral(resourceName: "equilatero")
                    imgTriangulo.isHidden = false
                    lLabel.text = "El triangulo es: equilatero"
                } else  //isoceles
                    if (dLado1 == dLado2 && dLado1 != dLado3) || (dLado2 == dLado3 && dLado2 != dLado1) || (dLado1 == dLado3 && dLado1 != dLado2) {
                        imgTriangulo.image = #imageLiteral(resourceName: "iscoseles")
                        imgTriangulo.isHidden = false
                        lLabel.text = "El triangulo es: isosceles"
                    } else {//escaleno
                        imgTriangulo.image = #imageLiteral(resourceName: "escaleno")
                        imgTriangulo.isHidden = false
                        lLabel.text = "El triangulo es: escaleno"
                }
            } else {
                let dS = (dLado1! + dLado2! + dLado3!)/2
                let dArea = sqrt((dS * (dS - dLado1!) * (dS - dLado2!) * (dS - dLado3!)))
                
                lLabel.text = "El area es: \(dArea)"
            }
        } else {
            alertValoresNulos(sTitle: "Error", sMessage: "Valores no aceptados")
        }
    }
    
    
    
    
    
    //funcion que crea objeto de tipo alerta
    func alertValoresNulos(sTitle: String, sMessage: String){
        let aAlert = UIAlertController(title: sTitle, message: sMessage, preferredStyle: .alert)
        let aContinue = UIAlertAction(title: "Continue", style: .default, handler: nil)
        aAlert.addAction(aContinue)
        self.present(aAlert, animated: true, completion: nil)
        
    }
    
    
    //ACTIONS
    //action del boton
    @IBAction func sSwitchBoton(_ sender: UISwitch) {
        lLabel.text = "El area es: "
        cambiarBoton()
        
    }
    
    //action para esconder teclado
    @IBAction func quitaTeclado(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    //action para activar el boton, en el metodo que manda a llamar decide si calcula area o muestra tipo de triangulo
    @IBAction func bButtonAction(_ sender: UIButton) {
        
        calcular()
        
    }
}





