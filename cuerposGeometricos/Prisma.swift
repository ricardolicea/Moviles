//
//  Prisma.swift
//  cuerposGeometricos
//
//  Created by Ricardo Licea on 8/31/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class Prisma: UIViewController {

    
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var btGuardar: UIButton!
    @IBOutlet weak var imgPrisma: UIImageView!
    
    var largo : CGFloat! = 0.0
    var ancho : CGFloat! = 0.0
    var altura : CGFloat! = 0.0
    
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
            let volumen = Double(tfLargo.text!)! * Double(tfAncho.text!)! * Double(tfAltura.text!)!
            let image = imgPrisma.image
            vistaInicial.informacion = "Largo: " + tfLargo.text! + "\n" + "Ancho: " + tfAncho.text! + "\n" + "Altura: " + tfAltura.text!
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
            if tfLargo.text! == "" || tfAncho.text! == "" || tfAltura.text! == ""{
                let alerta = UIAlertController(title: "Ok", message: "Los campos estan vacios", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
            }
            
        }
        return true
    }

    

}
