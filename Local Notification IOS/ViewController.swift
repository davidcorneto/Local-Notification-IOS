//
//  ViewController.swift
//  Local Notification IOS
//
//  Created by Vesperia on 8/3/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {didAlow, error in})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAction(_ sender: UIButton) {
        
        //Membuat notification
        let content = UNMutableNotificationContent()
        content.title = "The 5 second are up!"
        content.subtitle = "They are up now!"
        content.body = "The 5 second are really up!"
        content.badge = 1
        
        //create timer for notification
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
    }

}

