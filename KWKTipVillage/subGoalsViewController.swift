//
//  subGoalsViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subGoalsViewController: UIViewController {

    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet weak var idleImage: UIImageView!
    @IBOutlet weak var talkingImage: UIImageView!
    @IBOutlet weak var speechBubbleClide: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idleImage.isHidden = false
               talkingImage.isHidden = true
               happyImage.isHidden = true
        speechBubbleClide.text = "Heyo"
    }
    
    var numClide = 0
    
    var speechClide = [
        "New week new me, heh. I’m trying to start writing down what I want to get done this week so I can plan for it . . .", "It kinda gets messy in my head sometimes, but seeing it in a list really clears it up for me.", "",
        "Sometimes it’s really hard to find motivation.", "Like right now I should go for a run (around my house) but I could sleep instead, right?", "Well, when this happens it can be helpful to say aloud “In three seconds I’m going to run for 10 minutes” and then count down.", "Let’s try it. Just lemme know when you’re ready for the countdown.", "Ready?", "3", "2", "1", "GO"
    ]

    @IBAction func nextButtonClide(_ sender: UIButton) {
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
                  
        speechBubbleClide.text = speechClide[numClide]
        numClide = numClide + 1
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
