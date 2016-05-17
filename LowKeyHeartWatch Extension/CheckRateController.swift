//
//  CheckRateControllerInterfaceController.swift
//  LowKey
//
//  Created by Ceferino Malabed on 5/5/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import WatchKit
import UIKit
import WatchConnectivity

var curRate : Int = 0

class CheckRateController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet var curRateLabel: WKInterfaceLabel!
    @IBOutlet var normRateLabel: WKInterfaceLabel!
    
    @IBOutlet var sendTo: WKInterfaceButton!
    
    var session : WCSession? = WCSession.isSupported() ? WCSession.defaultSession() : nil
    
    let image : UIImage = UIImage(named: "heartSend")!
    var curRateSend : Int = curRate
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        sendTo.setBackgroundImage(image)
        normRateLabel.setText("Norm Rate: " + String(normRate))
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        if (WCSession.isSupported()) {
            session = WCSession.defaultSession()
            session?.delegate = self
            session?.activateSession()
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func measureRate() {
        
        //canned heart rate data
        let rate = Int(arc4random_uniform(120) + 40)
        curRate = rate
        
        curRateLabel.setText(String(rate) + " bpm")
        
        //sets heartrate being sent to the
        curRateSend = rate
    }
    
    @IBAction func sendToPhone() {
        
        let current : Dictionary = ["current_rate" : curRateSend]
        
        // The paired iPhone has to be connected bluetooth
        if let session = session where session.reachable {
            session.sendMessage(current, replyHandler: { replyData in
                // handles reply from iPhone app here
            print(replyData)
                }, errorHandler: { error in
                    //catches any errors
                    print(error)
            })
        } else {
            //iPhone and watch are not connected via Bluetooth
        }
        
    }
    
    

}
