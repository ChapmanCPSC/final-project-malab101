//
//  ViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit
import WatchConnectivity

var normValue : Int = 0

class ViewController: UIViewController, WCSessionDelegate {

    var session: WCSession!
    
    @IBOutlet weak var restRateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (WCSession.isSupported()) {
            session = WCSession.defaultSession()
            session?.delegate = self
            session?.activateSession()
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
        
        dispatch_async(dispatch_get_main_queue()) {
            if let rateValue = message["normal_rate"] as? Int {
                self.restRateLabel.text = String(rateValue)
                normValue = rateValue
            }
        }
    }


}

