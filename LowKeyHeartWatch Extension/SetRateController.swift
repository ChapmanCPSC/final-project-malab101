//
//  SetRateController.swift
//  LowKey
//
//  Created by Ceferino Malabed on 5/5/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import WatchKit
import UIKit
import WatchConnectivity

var normRate : Int = 0

class SetRateController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet var sendTo: WKInterfaceButton!
    @IBOutlet var normRateLabel: WKInterfaceLabel!
    
    var session : WCSession? = WCSession.isSupported() ? WCSession.defaultSession() : nil
    
    var normRateSend : Int = normRate
    
    let image : UIImage = UIImage(named: "heartSend")!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        sendTo.setBackgroundImage(image)
        normRateLabel.setText(String(normRate) + " bpm")
        
        // Configure interface objects here.
    }

    @IBAction func measureRate(){
        
        let rate : Int = Int(arc4random_uniform(65) + 35)
        
        normRate = rate
        normRateSend = normRate
        
        normRateLabel.setText(String(rate) + " bpm")
        
    }
    
    @IBAction func sendRateButton() {
        
        let normal : Dictionary = ["normal_rate" : normRateSend]
        
        // The paired iPhone has to be connected bluetooth
        if let session = session where session.reachable {
            session.sendMessage(normal, replyHandler: { replyData in
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

}
