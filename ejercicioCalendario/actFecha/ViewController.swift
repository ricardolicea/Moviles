//
//  ViewController.swift
//  actFecha
//
//  Created by Ricardo Licea on 8/24/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Segments: UISegmentedControl!
    
    //Outlets
    @IBOutlet weak var labDia: UILabel!
    @IBOutlet weak var labNumero: UILabel!
    @IBOutlet weak var labMes: UILabel!
    
    
    //Variables
    // MARK: - Actions
    var date = Date()
    let formaterMes = DateFormatter()
    let formaterDia = DateFormatter()
    let formaterDiaDeSemana = DateFormatter()
    let formater = DateFormatter()
    
    //Actions
    @IBAction func segConFormat(_ sender: UISegmentedControl) {
        if (Segments.selectedSegmentIndex == 0){
            
            formaterMes.dateFormat = "MMMM"
            labMes.text = formaterMes.string(from: date)
            labDia.text = formaterDiaDeSemana.string(from: date)
            labNumero.text = formaterDia.string(from: date)
            
            
        }
        else {
            labNumero.text = formaterDia.string(from: date)
            formater.dateFormat = "MMMM,YYYY"
            labDia.text = formaterDiaDeSemana.string(from: date)
            labMes.text = formater.string(from: date)
        }
    }
    
    @IBAction func diaSiguiente(_ sender: Any) {
        date.addTimeInterval(86400)
        cambiaFecha()
    }
    
    @IBAction func diaAnterior(_ sender: Any) {
        date.addTimeInterval(-86400)
        cambiaFecha()
    }
    
    @IBAction func semanaSiguiente(_ sender: Any) {
        date.addTimeInterval(604800)
        cambiaFecha()
    }
    
    @IBAction func semanaAnterior(_ sender: Any) {
        date.addTimeInterval(-604800)
        cambiaFecha()
    }
    
    
    
    
    

    func cambiaFecha() {
        if (Segments.selectedSegmentIndex == 0){
            
            labMes.text = formaterMes.string(from: date)
            labDia.text = formaterDiaDeSemana.string(from: date)
            formaterMes.dateFormat = "MMMM"
            labNumero.text = formaterDia.string(from: date)
            
            
        }
        else {
            formater.dateFormat = "MMMM,YYYY"
            labMes.text = formater.string(from: date)
            labDia.text = formaterDiaDeSemana.string(from: date)
            labNumero.text = formaterDia.string(from: date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formaterDia.dateFormat = "dd"
        formaterMes.dateFormat = "MMMM"
        formater.dateFormat = "MMMM,YYYY"
        formaterDiaDeSemana.dateFormat = "EEEE"
        labDia.text = formaterDiaDeSemana.string(from: date)
        labNumero.text = formaterDia.string(from: date)
        labMes.text = formaterMes.string(from: date)
       
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

