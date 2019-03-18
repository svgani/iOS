//
//  add.swift
//  list
//
//  Created by Amritha Manoharan on 25/04/18.
//  Copyright © 2018 Amritha Manoharan. All rights reserved.
//

import UIKit
import UserNotifications


class add: UIViewController,UITextFieldDelegate, UNUserNotificationCenterDelegate {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var text: UITextField!
    @IBAction func send(_ sender: UIButton) {
        if text.text != "" {
            list.append(text.text!)
            detail.append(time.text!)
        text.text = ""
            
            let content = UNMutableNotificationContent()

            content.title = "tes"
            content.subtitle = "It's already T!me"
            content.body = "sending"
            content.badge = 1
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
            let request = UNNotificationRequest(identifier: "timerDone", content: content,trigger: trigger)
            
            UNUserNotificationCenter.current().delegate = self
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)

        }
    }
    
    @IBAction func datepickchanged(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datePicker.date)
        time.text = strDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in})
        self.text.delegate = self
        self.time.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.resignFirstResponder()
        time.resignFirstResponder()
        return(true)
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }

    
}
