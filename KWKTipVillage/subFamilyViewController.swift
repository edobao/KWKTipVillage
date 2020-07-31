//
//  subFamilyViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subFamilyViewController: UIViewController {

    @IBOutlet weak var speechBubbleFam: UILabel!
    
    var numFam = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechFamily = ["Hey . . . I can’t tell if someone is mad at me.", "They haven’t been rude per say but it’s not like they’ve been incredibly friendly either.", "I don’t really want to ask them about it in case they really aren’t. I don’t know, maybe this is all in my head.", "I’m just going to continue being nice to them and I’ll try to say Hi when I see them, and if they’re really mad then I’ll have actual evidence, but for now it just sounds like I’m overthinking this."]
    
    @IBAction func nextFam(_ sender: UIButton) {
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
