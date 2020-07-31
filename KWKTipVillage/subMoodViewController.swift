//
//  subMoodViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subMoodViewController: UIViewController {
   
    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet weak var talkingImage: UIImageView!
    @IBOutlet weak var idleImage: UIImageView!
    @IBOutlet weak var sliderBarVibe: UISlider!
    @IBOutlet weak var vibeSpeechBubble: UILabel!
    
    var numVibe = 0
    
    var wordsVibe = [
        "Ah, I see. It happens sometimes. Sometimes when I feel that way I call up my friend Birdt and vent.", "He’s a good hype friend.", "",
        "Sometimes it’s just one of those days, huh?", "This is when we check in with ourselves and ask: have we eaten?", "Had a glass of water? Taken a break to get some exercise?", "Sometimes it’s the little things that add up,", "so we have to remember to take a breather when things aren’t as they should.", "",
        "Nice! I’m doing pretty well myself.", ""
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idleImage.isHidden = false
        talkingImage.isHidden = true
        happyImage.isHidden = true
        vibeSpeechBubble.text = "How are feelings?"
    }
    
                @IBAction func sliderBarMovedVibe(_ sender: UISlider) {
        if Int(sender.value) <= 3 {
            vibeSpeechBubble.isHidden = true
            vibeSpeechBubble.text = wordsVibe[0]
        } else if Int(sender.value) <= 7, Int(sender.value) > 3 {
            vibeSpeechBubble.isHidden = true
            vibeSpeechBubble.text = wordsVibe[2]
        } else if Int(sender.value) >= 8{
            vibeSpeechBubble.isHidden = true
            vibeSpeechBubble.text = wordsVibe[4]
        }
    }
    
    @IBAction func nextVibeSpeech(_ sender: UIButton) {
        idleImage.isHidden = false
        idleImage.alpha = 1.0
        UIView.animate(withDuration: 2.0, delay: 0.10, options: [], animations: {
            self.idleImage.alpha = 0.0
        }) {(finished: Bool) in
            self.idleImage.isHidden = true
        }
               talkingImage.isHidden = true
               talkingImage.alpha = 0.0
        UIView.animate(withDuration: 3.0, delay: 0.05, options: [], animations: {
                   self.talkingImage.alpha = 1.0
                  }) { (finished: Bool) in
                      self.talkingImage.isHidden = false
                    UIView.animate(withDuration: 3.0, delay: 1.5, options: [], animations: {
                       self.talkingImage.alpha = 0.0
                   }) { (finished: Bool) in
                       self.talkingImage.isHidden = true
                   }
                  }
               happyImage.isHidden = true
                 happyImage.alpha = 0.0
        UIView.animate(withDuration: 3.0, delay: 2.5, options: [], animations: {
                     self.happyImage.alpha = 1.0
                    }) { (finished: Bool) in
                       self.happyImage.isHidden = false
                        UIView.animate(withDuration: 3.0, delay: 3.0, options: [], animations: {
                           self.happyImage.alpha = 0.0
                       }) { (finished: Bool) in
                           self.happyImage.isHidden = true
                       }
               }
           
        sliderBarVibe.isHidden = true
        vibeSpeechBubble.isHidden = false
        
      vibeSpeechBubble.text = wordsVibe[numVibe]
        numVibe = numVibe + 1
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
