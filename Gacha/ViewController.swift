//
//  ViewController.swift
//  Gacha
//
//  Created by Rayne on 11/4/15.
//  Copyright (c) 2015 Chibidebu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func getRandomNumber() {
        number = Int(arc4random_uniform(10))
        NSLog("Given random number is %d", number)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //segueのdestination
        var resultViewController = segue.destinationViewController as! ResultViewController
        
        resultViewController.number = self.number
    }


}

