//
//  SleepViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class SleepViewController: UIViewController {
    
    var numSleep = 0
    
    
    @IBOutlet weak var labelSleep: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechSleep = ["Zzzz . . .", "Oh, hi there! I’m just waking up from a nap . . .", "naps should only last 15 to 20 minutes before I get too far into the sleep cycle, so I’m glad you woke me up!", "If I’d woken up later I probably would’ve been more tired than I started being.", "",
    "*snore*", "snurf Oh, good morning! Or is it afternoon . . .", "it’s good to get around 9 ½  hours of sleep each day for teens, so I’ve been trying to get in my hours.", "",
    "Did you know there’s such thing as too much sleep?", "Apparently getting less than 6 hours of sleep and more than 10 hours of sleep can be harmful to your metabolism.", "Read more about it here!", "",
    "Did you know sleep can help improve your mood?", "I learned it from Vibe. There’s actually a ton of benefits of getting a good night’s rest,", "like improving memory and lowering risk for health problems like heart disease!", "You can find more at this cool website here!", "",
    "Zzzz. . .", "Just kidding! It’s not my bedtime right now.", "Did you know that it matters what time of day you sleep?", "It’s best to be asleep between 10 PM and 2AM because that’s peak time to release growth hormones.", "",
    "I’m tired, and it’s only 2 PM!", "But that’s natural. Early afternoon naps can be beneficial too, I just have to keep it around 20 minutes long.", "",
    "Did you know you grow when you sleep?", "Your body releases growth hormones and repairs itself while you’re resting, so it’s important that you give it the time to do so!", ""
    ]
    
    @IBAction func nextSleep(_ sender: UIButton) {
        labelSleep.text = speechSleep[numSleep]
        numSleep = numSleep + 1
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
