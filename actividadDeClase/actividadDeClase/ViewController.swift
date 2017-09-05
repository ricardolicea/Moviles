//
//  ViewController.swift
//  actividadDeClase
//
//  Created by Alumno on 8/14/17.
//  Copyright © 2017 Alumno. All rights reserved.
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
//SLIDER
    @IBOutlet weak var oLimon: UIImageView!

    @IBOutlet weak var oViewSlider: UIView!
    @IBAction func aSlider(_ sender: UISlider) {
        let nuevaPos = oViewSlider.frame.width - oLimon.frame.width
        oLimon.frame.origin.x = nuevaPos * CGFloat(sender.value)
    }
    
    
//SEGMENTEDCONTROL
   
    @IBOutlet weak var oViewSegmentedController: UIView!
    @IBOutlet weak var tfHola: UILabel!
    @IBAction func aSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            UIView.animate(withDuration: 1, animations: {
                self.tfHola.frame.origin.x = self.view.frame.width
            })
        } else {
            UIView.animate(withDuration: 1, animations: {
                self.tfHola.frame.origin.x = 0
            })
            
        }
    }
    
    
    
//VIEW
    @IBOutlet weak var oViewSwitch: UIView!
    @IBAction func aSwitch(_ sender: UISwitch) {
        if sender.isOn {
            oViewSwitch.backgroundColor = UIColor.lightGray
        } else {
            oViewSwitch.backgroundColor = UIColor.black
        }
    }
    
}

