//
//  MethodPickViewController.swift
//  LowKey
//
//  Created by Ceferino Malabed on 5/11/16.
//  Copyright © 2016 Chapman University. All rights reserved.
//

import UIKit

class MethodPickViewController: UIViewController{
    
    var curAction: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func topLeftPress(sender: UIButton) {
        ftEffect += 1
        mostEffective.sortInPlace(>)
    }

    @IBAction func bottomLeftPress(sender: UIButton) {
        countEffect += 1
        mostEffective.sortInPlace(>)
    }
    
    @IBAction func topRightPress(sender: UIButton) {
        psEffect += 1
        mostEffective.sortInPlace(>)
    }

    @IBAction func bottomRightPress(sender: UIButton) {
        tmEffect += 1
        mostEffective.sortInPlace(>)
    }
    
}
