//
//  InfoDetailViewController.swift
//  LowKey
//
//  Created by Katie on 4/17/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class InfoDetailViewController: UIViewController {
    
    // subject to change
    var curInfo : String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descripLabel: UILabel!
    @IBOutlet weak var infoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        switch curInfo {
        case "4, 7, 8":
            nameLabel.text! = curInfo
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = NSTextAlignment.Left
            paragraphStyle.headIndent = 17.0
            let messageText = NSMutableAttributedString(
                string: "\n1. First, exhale all air out of your lungs through your mouth. \n2. Now close your mouth and inhale slowly for four seconds. \n3. Hold your breath for seven seconds. \n4. Exhale slowly and completely through your mouth for eight seconds. \n5. Begin the cycle again by inhaling and repeat three more times.",
                attributes: [
                    NSParagraphStyleAttributeName: paragraphStyle
                ]
            )
            descripLabel.text! = "\tThis is a breathing technique, also called \"The Relaxing Breath\", known to relax and calm the body. It is a simple, five step process that can be easily done anywhere:\n" + String(messageText)
            infoImage.image = UIImage(named: "478")
            break;
        case "Make a List":
            nameLabel.text! = curInfo
            descripLabel.text! = "\tLists help to organize your thoughts and gives you a positive sense of accomplishment when crossing things off your list. They also help in establishing steps towards reaching a goal when laying out long-term plans. Simply pick up a notepad and a colorful pen and start listing. This will allow you to prioritize your tasks and better manage your overall stress by breaking down big tasks into smaller steps."
            infoImage.image = UIImage(named: "list")
            break;
        case "Find a Hobby":
            nameLabel.text! = curInfo
            descripLabel.text! = "\tPicking up a low-pressure hobby can help alleviate anxiety by taking your mind off of stressful events or tasks. Find something you would find calming and enjoy doing such as reading, exercising, listening to music, knitting, jigsaw puzzles, or coloring books. Engaging in an activity you naturally find enjoyment in will improve your mental health."
            infoImage.image = UIImage(named: "hobby")
            break;
        case "Guided Visualization":
            nameLabel.text! = curInfo
            descripLabel.text! = "\tThis is a meditation technique that involves visualizing yourself in a calm, happy environment. The more you can picture yourself in this state, the more relaxed you will feel. Choose a place where you feel most at peace. Find a comfortable spot to relax and visualize this place. Take slow, deep breaths. You can play music in the background if it helps you in your visualization."
            infoImage.image = UIImage(named: "cuteTree")
            break;
        
        default:
            break;
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
