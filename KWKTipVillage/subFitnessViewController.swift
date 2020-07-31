//
//  subFitnessViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subFitnessViewController: UIViewController {

    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet weak var idleImage: UIImageView!
    @IBOutlet weak var talkingImage: UIImageView!
    @IBOutlet weak var speechBubbleBirdt: UILabel!
    
    var numBirdt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var speechBirdt = [
        "GET FIT!", "",
        "Did you know you should exercise for 30 minutes every day?", "I try to do a lot of different activities because doing one thing can get boring sometimes,", "but they all happen in the morning or afternoon!", "In the evening I’m usually too tired to do that much exercise and I want to make sure to wind down before I go to bed!", "",
        "Looking for exercise activities?", "I would normally suggest a walk at the park or around the neighborhood to get some fresh air, but for now we can do fun activities at home!", "Try yoga or a quick workout routine online to get the blood flowing.", "I like to turn on my favorite music and just dance around the house--it doesn’t matter how good the moves are, I’m having the best home concert you’ve ever seen.", ""
    ]

    @IBAction func nextBirdt(_ sender: UIButton) {
        idleImage.isHidden = false
                      idleImage.alpha = 1.0
                      UIView.animate(withDuration: 2.0, delay: 5, options: [], animations: {
                          self.idleImage.alpha = 0.0
                      }) { (finished: Bool) in
                          self.idleImage.isHidden = true
                      }
                      talkingImage.isHidden = true
                      talkingImage.alpha = 0.0
                         UIView.animate(withDuration: 2, delay: 10.0, options: [], animations: {
                          self.talkingImage.alpha = 1.0
                         }) { (finished: Bool) in
                             self.talkingImage.isHidden = false
                          UIView.animate(withDuration: 2.0, delay: 13.0, options: [], animations: {
                              self.talkingImage.alpha = 0.0
                          }) { (finished: Bool) in
                              self.talkingImage.isHidden = true
                          }
                         }
                      happyImage.isHidden = true
                        happyImage.alpha = 0.0
                           UIView.animate(withDuration: 2, delay: 18.0, options: [], animations: {
                            self.happyImage.alpha = 1.0
                           }) { (finished: Bool) in
                              self.happyImage.isHidden = false
                              UIView.animate(withDuration: 2.0, delay: 22.0, options: [], animations: {
                                  self.happyImage.alpha = 0.0
                              }) { (finished: Bool) in
                                  self.happyImage.isHidden = true
                              }
                      }
                  
        speechBubbleBirdt.text = speechBirdt[numBirdt]
        numBirdt = numBirdt + 1
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
