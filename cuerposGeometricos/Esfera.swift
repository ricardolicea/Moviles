//
//  Esfera.swift
//  cuerposGeometricos
//
//  Created by Ricardo Licea on 8/31/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class Esfera: UIViewController {
    
    
    @IBOutlet weak var radio: UITextField!
    
    @IBOutlet weak var imgEsfera: UIImageView!
    @IBOutlet weak var btGuardar: UIButton!
    var tfRadio: CGFloat = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        if sender as! UIButton == btGuardar{
            let vistaInicial = segue.destination as! ViewController
            let varRadio = Double(self.radio.text!)!
            let volumen = 4/3 * pow(varRadio,3) * 3.1416
            let image = imgEsfera.image
            
            
            
            vistaInicial.informacion = radio.text!
            vistaInicial.volumen = String(volumen)
            vistaInicial.image = image!
        } else {
            let vistaInicial = segue.destination as! ViewController
            vistaInicial.informacion = ""
            vistaInicial.volumen = ""
            vistaInicial.image = #imageLiteral(resourceName: "figuras")
        }
        
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as! UIButton == btGuardar{
            if radio.text == ""{
                let alerta = UIAlertController(title: "Ok", message: "Los campos estan vacios", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }

        }
    return true
    }
}
