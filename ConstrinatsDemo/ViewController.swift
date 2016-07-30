//
//  ViewController.swift
//  ConstrinatsDemo
//
//  Created by Jack on 29/07/16.
//  Copyright © 2016 Wednesday Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let mylbl:UILabel=UILabel()
        mylbl.frame=CGRectMake(20, 300, 250, 30)
        mylbl.translatesAutoresizingMaskIntoConstraints=false
        mylbl.text = "Captani JackSparrow"
        mylbl.backgroundColor=UIColor.redColor()
        mylbl.textAlignment = .Center
        mylbl.textColor=UIColor.whiteColor()
        self.view.addSubview(mylbl)
       
        
        // Width constraint
        mylbl.addConstraint(NSLayoutConstraint(item: mylbl, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 280))

        
        // Height constraint
        mylbl.addConstraint(NSLayoutConstraint(item: mylbl, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: 30))

        
        // CenterX constraint
        self.view!.addConstraint(NSLayoutConstraint(item: self.view!, attribute: .CenterX, relatedBy: .Equal, toItem: mylbl, attribute: .CenterX, multiplier: 1, constant: 0))

        
        // Top constraint
        self.view!.addConstraint(NSLayoutConstraint(item: mylbl, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide, attribute: .Bottom, multiplier: 1, constant: 40))

        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

