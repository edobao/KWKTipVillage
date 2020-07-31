//
//  EnviroViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class EnviroViewController: UIViewController {
    
    var numEnv = 0
    
    @IBOutlet weak var labelEnv: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var speechEnv = [
    "Hello! It’s so good to see you!", "Do you know how much it costs to plant a tree?", "Just one dollar. You can help!", "Donate a dollar, fund a tree to be planted and support a cause that matters to you! Find the details at this helpful website.", "",
    "My house is a little messy today and it makes my head feel a little messy too.", "I think I’ll take a minute to collect some left over paper and trash from my desk today.", "I don’t have to do it all because it might take all day, but maybe a little bit at a time will work better!", "",
    "Have you tried using recyclable bags instead of plastic ones at the store?", "It’s pretty convenient to use and becoming more widely accepted too!", "My bags are blue and green, and they fold up really easily so I can put it in a backpack or bag.", "",
    "Have you gotten a lot of plastic bags recently?", "Don’t throw them away! You can reuse them around the house (say, to wrap a leaky bottle in your bag) or make them into plarn!", "Plarn is used to make sleeping mats for the homeless by these lovely people.", "",
    "My friend Toffy has a garden where she grows tons of foods like pears and onions . . .", "it actually doesn’t take too much effort, you just have to plant them and water them every once in a while.", "They’re really great to cut down on the plastic you might get from buying food at the store, even if it’s just a few items.", "",
    "Sustainable brands are pretty easy to find, if you take the time to look!", "It’s amazing how many things can be made more eco-friendly.", "Check out these masks I found, for example, which are made from salvaged hemp, or these Black-owned companies that make jewelry, clothes, and more!", "",
    "Planning on taking a trip to the park?", "Why not take out the bikes or consider taking public transportation?", "Every little effort helps to reduce carbon emissions, and you might catch some beautiful views on the way.", ""
    ]
    
    @IBAction func nextEnv(_ sender: UIButton) {
        labelEnv.text = speechEnv[numEnv]
        numEnv = numEnv + 1
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
