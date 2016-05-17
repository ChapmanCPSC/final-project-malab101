//
//  LogViewController.swift
//  LowKey
//
//  Created by Ceferino Malabed on 5/11/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit
import Foundation

class LogViewController: UIViewController{
    
    //most effective method labels
    @IBOutlet weak var mostEffect1: UILabel!
    @IBOutlet weak var mostEffect2: UILabel!
    @IBOutlet weak var mostEffect3: UILabel!
    @IBOutlet weak var mostEffect4: UILabel!
    
    //most used method labels
    @IBOutlet weak var mostUsed1: UILabel!
    @IBOutlet weak var mostUsed2: UILabel!
    @IBOutlet weak var mostUsed3: UILabel!
    @IBOutlet weak var mostUsed4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)

        mostUsed = mostUsed.sort(>)
        mostEffective = mostEffective.sort(>)
        
        //Most Used Switch Cases
        //1st label
        switch(mostUsed[0]){
        case (ftUse):
            mostUsed1.text = "Finger Trace" + "    " + String(ftUse) + "time(s)"
        case (countUse):
            mostUsed1.text = "Counting" + "    " + String(countUse) + "time(s)"
        case (psUse):
            mostUsed1.text = "Problem Solving" + "    " + String(psUse) + "time(s)"
        case (tmUse):
            mostUsed1.text = "Tense Muscles" + "    " + String(tmUse) + "time(s)"
        default:
            break
        }
        
        //2nd label
        switch(mostUsed[1]){
        case (ftUse):
            mostUsed2.text = "Finger Trace" + "    " + String(ftUse) + "time(s)"
        case (countUse):
            mostUsed2.text = "Counting" + "    " + String(countUse) + "time(s)"
        case (psUse):
            mostUsed2.text = "Problem Solving" + "    " + String(psUse) + "time(s)"
        case (tmUse):
            mostUsed2.text = "Tense Muscles" + "    " + String(tmUse) + "time(s)"
        default:
            break
        }
        
        //3rd label
        switch(mostUsed[2]){
        case (ftUse):
            mostUsed3.text = "Finger Trace" + "    " + String(ftUse) + "time(s)"
        case (countUse):
            mostUsed3.text = "Counting" + "    " + String(countUse) + "time(s)"
        case (psUse):
            mostUsed3.text = "Problem Solving" + "    " + String(psUse) + "time(s)"
        case (tmUse):
            mostUsed3.text = "Tense Muscles" + "    " + String(tmUse) + "time(s)"
        default:
            break
        }
        
        //4th label
        switch(mostUsed[3]){
        case (ftUse):
            mostUsed4.text = "Finger Trace" + "    " + String(ftUse) + "time(s)"
        case (countUse):
            mostUsed4.text = "Counting" + "    " + String(countUse) + "time(s)"
        case (psUse):
            mostUsed4.text = "Problem Solving" + "    " + String(psUse) + "time(s)"
        case (tmUse):
            mostUsed4.text = "Tense Muscles" + "    " + String(tmUse) + "time(s)"
        default:
            break
        }
        
        
        //Most Effective Switch Cases
        //1st label
        switch(mostEffective[0]){
        case (ftEffect):
            mostEffect1.text = "Finger Trace"
        case (countEffect):
            mostEffect1.text = "Counting"
        case (psEffect):
            mostEffect1.text = "Problem Solving"
        case (tmEffect):
            mostEffect1.text = "Tense Muscles"
        default:
            break
        }
        
        //2nd label
        switch(mostEffective[1]){
        case (ftEffect):
            mostEffect2.text = "Finger Trace"
        case (countEffect):
            mostEffect2.text = "Counting"
        case (psEffect):
            mostEffect2.text = "Problem Solving"
        case (tmEffect):
            mostEffect2.text = "Tense Muscles"
        default:
            break
        }
        
        //3rd Label
        switch(mostEffective[2]){
        case (ftEffect):
            mostEffect3.text = "Finger Trace"
        case (countEffect):
            mostEffect3.text = "Counting"
        case (psEffect):
            mostEffect3.text = "Problem Solving"
        case (tmEffect):
            mostEffect3.text = "Tense Muscles"
        default:
            break
        }
        
        //4th label
        switch(mostEffective[3]){
        case (ftEffect):
            mostEffect4.text = "Finger Trace"
        case (countEffect):
            mostEffect4.text = "Counting"
        case (psEffect):
            mostEffect4.text = "Problem Solving"
        case (tmEffect):
            mostEffect4.text = "Tense Muscles"
        default:
            break
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
