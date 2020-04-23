//
//  ViewController.swift
//  NotificationsUIKit
//
//  Created by Lalith  on 22/04/20.
//  Copyright © 2020 Lalith . All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        InstanceID.instanceID().instanceID { (result, error) in
            if let error = error {
                print("Error fetching remote instance ID: \(error)")
            } else if let result = result {
                print("Remote instance ID token: \(result.token)")
            }
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "HomeToNext", sender: self)
    }
    
        
}

