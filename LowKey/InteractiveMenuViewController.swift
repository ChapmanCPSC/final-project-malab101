//
//  InteractiveMenuViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class InteractiveMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func topLeftInfoButtonPressed(sender: AnyObject) {
        
        ftUse = ftUse + 1
        mostUsed.sortInPlace(>)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("interactive_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InteractiveDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curAction = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
    @IBAction func bottomLeftInfoButtonPressed(sender: AnyObject) {
        
        countUse = countUse + 1
        mostUsed.sortInPlace(>)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("interactive_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InteractiveDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curAction = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }

    @IBAction func topRightInfoButtonPressed(sender: AnyObject) {
        
        tmUse = tmUse + 1
        mostUsed.sortInPlace(>)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("interactive_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InteractiveDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curAction = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
    @IBAction func bottomRightInfoButtonPressed(sender: AnyObject) {
        
        psUse = psUse + 1
        mostUsed.sortInPlace(>)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("interactive_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InteractiveDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curAction = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "showItemSegue") {
            let controller: InteractiveMenuViewController = (segue.destinationViewController as! UINavigationController).topViewController as MethodPickViewController
        }
    }*/
    
}
