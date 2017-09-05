//
//  ViewController.swift
//  ticTacToe
//
//  Created by Ricardo Licea on 8/28/17.
//  Copyright © 2017 Ricardo Licea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var labJugador: UILabel!
    
    @IBOutlet weak var butReiniciar: UIButton!
    
    
    
    var iJugador: Int = 1
    var iJugadorPuso = [0,0,0,0,0,0,0,0,0]
    let combinaciones = [ [3, 4, 5], [1, 4, 7], [6, 7, 8], [0, 1, 2], [2, 4, 6], [0, 3, 6], [2, 5, 8], [0, 4, 8]]
    var juegoActivo = true
    
    
    //Actions
    @IBAction func aBoton(_ sender: UIButton) {
        if (iJugadorPuso[sender.tag-1] == 0 && juegoActivo == true) {
            
            iJugadorPuso[sender.tag-1] = iJugador
            if iJugador == 1{
                sender.setImage(UIImage(named: "Tacha_roja.png"), for: .normal)
                labJugador.text = "Jugador 2"
                iJugador = 2
            } else {
                sender.setImage(UIImage(named:"2b55.png"), for: .normal)
                labJugador.text = "Jugador 1"
                iJugador = 1
            }
        }
        
        
        
        for posiblesComb in combinaciones {
            
            if iJugadorPuso[posiblesComb[0]] != 0 && iJugadorPuso[posiblesComb[0]] == iJugadorPuso[posiblesComb[1]] && iJugadorPuso[posiblesComb[1]] == iJugadorPuso[posiblesComb[2]] {
                
                juegoActivo = false
                
                if iJugadorPuso[posiblesComb[0]] == 1 {
                    
                    let alert = UIAlertController(title: "Jugador 1 HA GANADO!", message: "Felicidades", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
                    present(alert, animated: true, completion: nil)
                    
                    for i in 1...9 {
                        
                        let button = view.viewWithTag(i) as! UIButton
                        button.isEnabled = false
                    }
                    
                } else {
                    
                    let alert = UIAlertController(title: "Jugador 2 HA GANADO!", message: "Felicidades", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
                    present(alert, animated: true, completion: nil)
                    
                    for i in 1...9 {
                        
                        let button = view.viewWithTag(i) as! UIButton
                        button.isEnabled = false
                    }
                    
                }
            }
        }
        
        juegoActivo = false
        
        for iCont in iJugadorPuso {
            
            if (iCont == 0) {
                
                juegoActivo = true
                break
            }
        }
        
        if (juegoActivo == false) {
            
            let alert = UIAlertController(title: "Empate", message: "Jugar otra vez", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK" , style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
            butReiniciar.isHidden = false
            
            for iCont in 1...9 {
                
                let button = view.viewWithTag(iCont) as! UIButton
                button.isEnabled = false
            }
            
        }
        
    }
    
    @IBAction func playAgain(_ sender: AnyObject) {
        labJugador.text = "Jugador 1"
        
        //iJugadorPuso = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        for iCont in 0...8 {
            iJugadorPuso[iCont] = 0
        }
        juegoActivo = true
        iJugador = 1
        
        for i in 1...9 {
            
            let button = view.viewWithTag(i) as! UIButton
            button.isEnabled = true
            button.setImage(nil, for: .normal)
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labJugador.text = "Jugador 1"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

