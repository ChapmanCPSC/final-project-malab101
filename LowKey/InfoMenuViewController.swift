//
//  InfoMenuViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class InfoMenuViewController: UIViewController {
    
    @IBOutlet weak var guidedButton: UIButton! //for text align center in viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        guidedButton.titleLabel?.textAlignment = NSTextAlignment.Center
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
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("info_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InfoDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curInfo = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
    @IBAction func bottomLeftInfoButtonPressed(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("info_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InfoDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curInfo = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
    @IBAction func topRightInfoButtonPressed(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("info_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InfoDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curInfo = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
    @IBAction func bottomRightInfoButtonPressed(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let navVC = storyBoard.instantiateViewControllerWithIdentifier("info_detail") as! UINavigationController
        let detailVC = navVC.viewControllers[0] as! InfoDetailViewController
        
        let curButtonPressed = sender as! UIButton
        detailVC.curInfo = curButtonPressed.titleLabel!.text!
        
        self.presentViewController(navVC, animated: true, completion: nil)
    }
    
}
