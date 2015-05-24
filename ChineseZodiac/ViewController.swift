//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Terry on 15/4/9.
//  Copyright (c) 2015年 terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!

    @IBOutlet weak var image: UIImageView!
    
    let offset = -8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        
        if let year = yearOfBirth.text.toInt() {
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
            image.hidden = false
        }
        
    }

}

