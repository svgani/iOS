//
//  ViewController.swift
//  notify
//
//  Created by Amritha Manoharan on 29/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    @IBAction func fun(_ sender: UIButton) {
        let content = UNMutableNotificationContent()
        content.title = "Hey!!"
        content.subtitle = "local notifications"
        content.body = "sending"
        content.badge = 5
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content,trigger: trigger)
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
        override func viewDidLoad() {
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in})
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }

}

