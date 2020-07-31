//
//  NutritionViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController {

    @IBOutlet weak var labelNut: UILabel!
    
    var numNut = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechNut = ["Did I tell you yet?", "I have a food garden!", "There’s a pear and peach tree and a patch of onion plants and mint.", "It’s really nice to have the groceries grow right outside, and I can store some food in my freezer for later.", "",
    "Are you hungry? I’m hungry.", "Maybe I’m just dehydrated though.", "Sometimes I feel like I crave food when I’ve just eaten, and that’s when I know it’s time to get a glass of water.", "",
    "When in doubt, fruit and vegetables make great snacks!", "I was in a smoothie phase for a bit, and they’re so easy to make. . .", "Maybe I’ll go make a smoothie.", "",
    "I don’t think I need to tell you this, but soda is pretty bad for your health.", "According to this article, all of the sugar you intake through soda doesn’t register in your brain as sustenance,", "so you still eat all the sugar you already took in."
    ]
    
    @IBAction func nextNut(_ sender: UIButton) {
        labelNut.text = speechNut[numNut]
        numNut = numNut + 1
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
