//
//  SettingsViewController.swift
//  Hotchkiss Dining Hall
//
//  Created by Daniel Kim on 1/10/17.
//  Copyright © 2017 Kobi Greene. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var breakfastSwitch: UISwitch!

    @IBOutlet weak var lunchSwitch: UISwitch!
    
    @IBOutlet weak var dinnerSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func breakfastToggled(_ sender: UISwitch) {
        if breakfastSwitch.isOn{
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
