//
//  FamilyViewController.swift
//  KWKTipVillage
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Emily Dobao. All rights reserved.
//

import UIKit

class FamilyViewController: UIViewController {

    @IBOutlet weak var friendsSubView: UIView!
    @IBOutlet weak var familySubView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            familySubView.alpha = 1
            friendsSubView.alpha = 0
        } else {
            familySubView.alpha = 0
            friendsSubView.alpha = 1
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
