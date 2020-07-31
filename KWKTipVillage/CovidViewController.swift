//
//  CovidViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class CovidViewController: UIViewController {
    
    var numNurse = 0
    
    @IBOutlet weak var happyImage: UIImageView!
    @IBOutlet weak var talkingImage: UIImageView!
    @IBOutlet weak var idleImage: UIImageView!
    @IBOutlet weak var labelNurse: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        labelNurse.text = "*humming*"
    }
    
    var speechNurse = [
    "Love the mask!", "Just remember to wash it after you use it, ok?", "I just throw mine into the washing machine with my clothes, and they don’t really shrink that much.", "",
    "Masks are somewhat of a fashion statement now, don’t you think?", "Purple is my favorite color so of course I had to make my mask that color,", "but I’ve seen some cool patterns, like rainbows and flowers! Just remember to not touch the outside.", "You can take it off by the hooks around your ears and fold it so the outer side is folded in! Then it’s all set to throw in the wash.", "",
    "Pro tip: You should wash your hands for 20 seconds!", "You can sing Happy Birthday twice, or the ABCs, or the chorus of your favorite song.", "Don’t forget to wring each thumb when you wash your hands, they’re often missed areas!", "",
    "I like to take walks around my neighborhood in the early morning.", "There’s not many people, it’s nice and cool in the summer, and it wakes me up for the day!", "Just be sure to check the health regulations specific to your state-", "-I can get by just with a mask, but it might differ for where you live.", "",
    "Covid (Corona Virus Disease) leaves us with a lot of unanswered questions, and it can be frustrating changing everyday routine without seeing an immediate difference.", "It’s important that change can come at a slow pace, and in cases like these isn’t it better to be safe than sorry?", "Little things like washing your hands frequently and wearing masks outdoors can really make a huge impact, even if you don’t realize it.", "This is a good site I found just in case you wanted to check it out!"]
    
    @IBAction func nextNurse(_ sender: UIButton) {
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
                  
        labelNurse.text = speechNurse[numNurse]
        numNurse = numNurse + 1
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
