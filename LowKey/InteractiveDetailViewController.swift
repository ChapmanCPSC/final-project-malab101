//
//  InteractiveDetailViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class InteractiveDetailViewController: UIViewController {
    
    var curAction: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descripLabel: UILabel!
    @IBOutlet weak var helpImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch curAction {
        case "Counting":
            nameLabel.text! = curAction
            descripLabel.text! = "\tA common technique to relieve stress is to shift your focus by counting on your fingers. Start by counting with your thumb with one hand. Once you get to 5, repeat on the same hand. The key is to put thought into each action and move at a steady pace."
            helpImage.image = UIImage(named: "count")
            break;
            
        case "Finger Trace":
            nameLabel.text! = curAction
            descripLabel.text! = "\tUse this technique to help clear your mind and focus your breathing. Slowly trace along the figure 8 above and hone your breathing until they are at the same pace. Be sure to keep the rhythm slow and steady."
            helpImage.image = UIImage(named: "infinity")
            break;
            
        case "Problem Solving":
            nameLabel.text! = curAction
            descripLabel.text! = "\tOne way to focus your mind is to concentrate on answering a challenging question. Try mentally laying out your grocery list. Another idea is to state the name of the street you grew up on, and then the next street over and so on."
            helpImage.image = UIImage(named: "lightbulb")
            
            break;
            
        case "Tense Muscles":
            nameLabel.text! = curAction;
            descripLabel.text! = "\tTensing your muscles is a good way to focus your energy. It can help bring you back to the present mentally. Start by tensing all the muscles in your body from your toes. Once you have reached the top of your head, slowly release each muscle one by one until you are no longer tensing."
            helpImage.image = UIImage(named: "breathing")
            break;
            
        default:
            break;
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
