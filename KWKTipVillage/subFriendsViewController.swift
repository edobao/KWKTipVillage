//
//  subFriendsViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/30/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class subFriendsViewController: UIViewController {

    @IBOutlet weak var speechBubbleFriend: UILabel!
    var numFriend = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechFren = ["I miss my friends.", "I miss seeing them all the time and talking to them about random things . . .", "but it can be so weird over text! Especially if they’re not on at the same times I am and then the conversation realllllly lags. *sigh*", "We should have mandatory hangouts every month or something and play scribbl.io.", "",
    "Sometimes it’s easy to talk myself out of things I really want to do.", "Like the other day I wanted to text a friend I haven’t talked to in weeks and just say “Hi, how are you?”", "But I felt so awkward and I wasn’t sure if they would respond, and then I was like, who cares?", "If they respond they respond, if they don’t then nothing has changed.", "P.S. they totally responded and we had amazing conversation about minecraft streamers on Twitch. The more you know, right?"
    ]
    
    
    @IBAction func nextFriend(_ sender: UIButton) {
        speechBubbleFriend.text = speechFren[numFriend]
        numFriend = numFriend + 1
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
