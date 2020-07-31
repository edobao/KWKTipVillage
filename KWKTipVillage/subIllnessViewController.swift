//
//  subIllnessViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subIllnessViewController: UIViewController {
    
    @IBOutlet weak var speechBubbleSick: UILabel!
    
    var numSick = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        speechBubbleSick.text = "*sniff*"
    }
    
    var speechSick = [
        "I don’t feel so well.", "A good bit of sunshine always helps a bit though!", "Maybe I’ll crack open a window and pretend I’m on an island somewhere. Closing my eyes always makes it better.", "I can smell the waves crashing on the shore, and the wind blowing against my feathers, and in the quiet I can hear my own breathing . . .", "",
        "Ugh, my head hurts.", "At times like these a good nap usually does the trick."
    ]
    
    @IBAction func nextButtonSick(_ sender: UIButton) {
        speechBubbleSick.text = speechSick[numSick]
        numSick = numSick + 1
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
