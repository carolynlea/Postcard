//
//  ViewController.swift
//  Postcard
//
//  Created by Carolyn Lea on 9/18/14.
//  Copyright (c) 2014 Lea Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
       //Code will evaluate when we press the button.
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

