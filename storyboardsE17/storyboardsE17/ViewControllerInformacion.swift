//
//  ViewControllerInformacion.swift
//  storyboardsE17
//
//  Created by Ricardo Licea on 8/28/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInformacion: UIViewController {
    
    //outlets
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet var tfAncho: UILabel!
    @IBOutlet weak var tfAltura: UILabel!
    
    //variables
    var dAncho: CGFloat!
    var dAltura: CGFloat!
    var foto: UIImage!
    
    //informacion

    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = foto
        tfAncho.text = String(describing: tfAncho!)
        tfAltura.text = String(describing: tfAltura!)

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
