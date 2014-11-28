//
//  ViewController.swift
//  Postal
//
//  Created by Sergio Jordan Queipo on 27/11/14.
//  Copyright (c) 2014 Sergio Jordan Queipo. All rights reserved.
//
// Aprendiendo a programar en Swift

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //esto determina el comportamiento y acciones cuando se hace clic en el botón de enviar
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.blueColor()
        
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.greenColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
       
        mailButton.setTitle("Mail enviado", forState: UIControlState.Normal)
        
        
    }
       
}

