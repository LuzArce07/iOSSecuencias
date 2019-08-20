//
//  ViewController.swift
//  Secuencias
//
//  Created by Alumno on 20/08/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgSecuencia: UIImageView!
    
    @IBAction func DoTapConejo(_ sender: Any) {
        
        if imgSecuencia.isAnimating{
            
            imgSecuencia.stopAnimating()
            
        } else {
            
            //Aqui la empezara ya que se le de tap(clic)
            imgSecuencia.startAnimating()
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Arreglo de UIImage con las imagenes de la secuencia
        var imagenesSecuenciaConejo : [UIImage] = []
        
        //El tipo de dato es opcional se pone el signo de admiracion
        //Se ponen el nombre de las imagenes
        imagenesSecuenciaConejo.append(UIImage(named: "conejo1")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo2")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo3")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo4")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo5")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo6")!)
        imagenesSecuenciaConejo.append(UIImage(named: "conejo7")!)
        
        imgSecuencia.animationImages = imagenesSecuenciaConejo
        imgSecuencia.animationDuration = 0.5 //La duracion es en segundos
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
}
