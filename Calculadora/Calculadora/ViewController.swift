//
//  ViewController.swift
//  Calculadora
//
//  Created by Isaac Velazquez on 11/11/17.
//  Copyright © 2017 MobileStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    var numeroAux : Double = 0
    var tipoOperacion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = "0"
    }
    
    @IBAction func seleccionoNumero(_ sender: UIButton) {
        
        print("\(sender.tag)")
        if displayLabel.text == "0" {
            displayLabel.text = "\(sender.tag)"
        }
        else {
            let strNumero = displayLabel.text! + "\(sender.tag)"
            displayLabel.text = strNumero
        }
        
    }
    
    @IBAction func seleccionoOperacion(_ sender: UIButton) {
    
        //0 -> /
        //1 -> *
        //2 -> +
        //3 -> -
        //4 -> =
        //5 -> C
        switch sender.tag {
        case 4:
            imprimirResultado()
            break
        case 5:
            displayLabel.text = "0"
            break
        case 0,1,2,3:
            numeroAux = Double(displayLabel.text!)!
            tipoOperacion = sender.tag
            displayLabel.text = "0"
        default:
            break
        }
        
    
    }
    
    func imprimirResultado(){
        
        var resultado:Double = 0
        switch tipoOperacion {
        case 0:
            resultado = numeroAux / Double(displayLabel.text!)!
            break
        case 1:
            resultado = numeroAux * Double(displayLabel.text!)!
            break
        case 2:
            resultado = numeroAux + Double(displayLabel.text!)!
            break
        case 3:
            resultado = numeroAux - Double(displayLabel.text!)!
            break
        default:
            break
        }
        
        displayLabel.text = "\(resultado)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

