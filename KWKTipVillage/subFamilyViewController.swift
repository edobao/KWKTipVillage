//
//  subFamilyViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subFamilyViewController: UIViewController {

    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet weak var talkingImage: UIImageView!
    @IBOutlet weak var idleImage: UIImageView!
    @IBOutlet weak var speechBubbleFam: UILabel!
    
    var numFam = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechFamily = ["Hey . . . I can’t tell if someone is mad at me.", "They haven’t been rude per say but it’s not like they’ve been incredibly friendly either.", "I don’t really want to ask them about it in case they really aren’t. I don’t know, maybe this is all in my head.", "I’m just going to continue being nice to them and I’ll try to say Hi when I see them, and if they’re really mad then I’ll have actual evidence, but for now it just sounds like I’m overthinking this."]
    
    @IBAction func nextFam(_ sender: UIButton) {
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
                  
        speechBubbleFam.text = speechFamily[numFam]
        numFam = numFam + 1
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
