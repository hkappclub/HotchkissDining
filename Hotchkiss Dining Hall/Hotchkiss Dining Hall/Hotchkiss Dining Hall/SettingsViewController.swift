//
//  SettingsViewController.swift
//  Hotchkiss Dining Hall
//
//  Created by Daniel Kim on 1/10/17.
//  Copyright © 2017 Kobi Greene. All rights reserved.
//

import UIKit
import UserNotifications

class SettingsViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    @IBOutlet weak var breakfastSwitch: UISwitch!

    @IBOutlet weak var lunchSwitch: UISwitch!
    
    @IBOutlet weak var dinnerSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) {(accepted, error) in
            if !accepted {
                print("Notification access denied.")
            }
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonToggled(_ sender: UISwitch) {
        if sender.isOn != true {
            switch sender.tag {
            case 1:
                breakfastNotification()
                break
            case 2:
                lunchNotification()
                break
            case 3:
                dinnerNotification()
                break
            case 4:
                dailyOverviewNotification()
            default:
                print("error in button toggled!")
                break
            }
            sender.setOn(true, animated: true)
        } else {
            switch sender.tag {
            case 1:
            UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: ["breakfastNotification"])
                break
            case 2:
            UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: ["lunchNotification"])
                break
            case 3:
              UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: ["dinnerNotification"])
                break
            case 4:
            UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: ["dailyOverviewNotification"])
            default:
                print("error in button toggled!")
                break
            }
        }
    }
    
    func breakfastNotification() {
        
        var date = DateComponents()
        date.hour = 7
        date.minute = 30
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "Notification Test"
        content.body = "This is just a test. Here is the body."
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Uh oh! We had an error: \(error)")
            }
        }
    }
    
    func lunchNotification() {
        
        var date = DateComponents()
        date.hour = 11
        date.minute = 30
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "Notification Test"
        content.body = "This is just a test. Here is the body."
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Uh oh! We had an error: \(error)")
            }
        }
    }
    
    func dinnerNotification() {
        
        var date = DateComponents()
        date.hour = 17
        date.minute = 00
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "Notification Test"
        content.body = "This is just a test. Here is the body."
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Uh oh! We had an error: \(error)")
            }
        }
    }
    
    
    func dailyOverviewNotification() {
        
        var date = DateComponents()
        date.hour = 7
        date.minute = 00
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "Notification Test"
        content.body = "This is just a test. Here is the body."
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest(identifier: "textNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print("Uh oh! We had an error: \(error)")
            }
        }
    }
    
    /*
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        return true
    }
    */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
