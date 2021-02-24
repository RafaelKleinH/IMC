//
//  ViewController.swift
//  IMC
//
//  Created by Rafael Hartmann on 23/02/21.
//

import UIKit





class ViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!;
    @IBOutlet weak var tfAltura: UITextField!;
    @IBOutlet weak var lbResult: UILabel!;
    @IBOutlet weak var imgResult: UIImageView!;
    @IBOutlet weak var viResult: UIView!
    
    
    var imc: Double = 0;
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func buttonCalc(_ sender: Any) {
        
    
        
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!){
            
            imc = peso / (altura * altura);
            
            mostraResultado()
        }
        }
        
    
    
    func mostraResultado(){
        
        var result:String = "";
        var image:String = "";
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            
            case 16..<18.5:
                result = "Abaixo do peso ideal"
                image = "abaixo"
                
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
                
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
            
        }
        
        lbResult.text = "\(Int(imc)): \(result)";
        imgResult.image = UIImage(named: image);
        viResult.isHidden = false;
        view.endEditing(true)
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     
    
    
}

