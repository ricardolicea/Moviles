//
//  ViewControllerDetalle.swift
//  actTableView
//
//  Created by Ricardo Licea on 9/4/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {
    @IBOutlet weak var lbMensaje: UILabel!
    var datoMostrar: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        lbMensaje.text = datoMostrar
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
