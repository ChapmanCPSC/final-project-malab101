//
//  HeartRateViewController.swift
//  LowKey
//
//  Created by Ceferino Malabed on 5/11/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit
import WatchConnectivity

var curRate : Int = 0

class HeartRateViewController: UIViewController, WCSessionDelegate{

    var session: WCSession?
    @IBOutlet weak var curRateLabel: UILabel!
    @IBOutlet weak var restRateLabel: UILabel!
    
    @IBOutlet weak var messageView: UITextView!
    @IBOutlet weak var helpNow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        helpNow.hidden = true
        messageView.hidden = true
        
        if (WCSession.isSupported()) {
            session = WCSession.defaultSession()
            session?.delegate = self
            session?.activateSession()
        }
        
        restRateLabel.text = String(normValue)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void) {
        
        dispatch_async(dispatch_get_main_queue()) {
            if let rateValue = message["current_rate"] as? Int {
                self.curRateLabel.text = String(rateValue)
                curRate = rateValue
                
                if ((curRate - normValue) > 40)
                {
                    self.helpNow.hidden = false
                    self.messageView.hidden = false
                }
            }
        }
        
        dispatch_async(dispatch_get_main_queue()) {
            if let restRateValue = message["normal_rate"] as? Int {
                self.restRateLabel.text = String(restRateValue)
            }
        }
    }

}
