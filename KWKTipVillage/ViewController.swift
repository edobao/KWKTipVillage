//
//  ViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/28/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//
//HELLO CAN YOU SEE THIS
//TESTING HELLO HELLO
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateText()
        Label.alpha = 1.0
        // Do any additional setup after loading the view.
    }
   
   
    func animateText() {
        UIView.animate(withDuration: 5.0, animations: {
            self.Label.alpha = 0
        }, completion: {
            (Completed : Bool) -> Void in
            self.animateText()
//            UIView.animate(withDuration: 1.0, delay: 3.0, options: UIView.AnimationOptions.curveLinear, animations: {
//                self.Label.alpha = 0
//            }, completion: {
//                (Completed: Bool) -> Void in
//                self.animateText()
//        })
        })
    }
        
        
        
    }


