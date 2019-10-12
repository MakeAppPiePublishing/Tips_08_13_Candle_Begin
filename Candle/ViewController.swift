//
//  ViewController.swift
//  Candle
//
//  Created by Steven Lipton on 10/10/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var flameView: UIView!
    
    @IBAction func CandleToggle(_ sender: UIButton) {
        flameView.isHidden.toggle()
    }
    
    func emitterCell(lifetime:Float, scale:CGFloat, color:UIColor)->CAEmitterCell{
        let cell = CAEmitterCell()
        cell.birthRate = 100
        cell.lifetime = lifetime
        cell.lifetimeRange = lifetime * 3
        cell.velocity = 50
        cell.velocityRange = 20
        cell.scale = scale
        cell.color = color.cgColor
        cell.emissionRange =  CGFloat.pi * 2.0 / 45.0
        cell.contents = UIImage(named: "spark")!.cgImage
        return cell
    }
    
    func flameEmitter(){
        let emitter = CAEmitterLayer()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flameEmitter()
    }


}

