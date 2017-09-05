//
//  ViewController.swift
//  actTableView
//
//  Created by Ricardo Licea on 9/4/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var lista : [String]!
    
    @IBOutlet weak var miTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lista = [String]()
        for dato in 1..<20 {
            lista.append("valor \(dato)")
        }
        title = "Usuarios"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK : - Métodos de Table View
    
    //funcion que dice cuantos renglones o celdas tendra la tabla
    //-esta regresando el numero de datos que hay en la lista que creamos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return lista.count
    }
    
    
    //funcion que hace, llena y retorna una celda. Agarra el "indexPath" como la celda que regresara
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) //agarra celdas de la lista de celdas reusables
        cell.imageView?.image = #imageLiteral(resourceName: "user")
        cell.textLabel?.text = lista[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    //MARK : - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let indexPath = miTableView.indexPathForSelectedRow
        let vistaDet = segue.destination as! ViewControllerDetalle
        vistaDet.datoMostrar = lista[indexPath!.row]
    }



}

