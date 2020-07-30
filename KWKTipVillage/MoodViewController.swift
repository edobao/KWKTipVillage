//
//  MoodViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class MoodViewController: UIViewController {

    @IBOutlet weak var goalsSubView: UIView!
    @IBOutlet weak var moodSubView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            moodSubView.alpha = 1
            goalsSubView.alpha = 0
        } else {
            moodSubView.alpha = 0
            goalsSubView.alpha = 1
        }
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
