//
//  CreateDropboxViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/22/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class CreateDropboxViewController: UIViewController {

    @IBOutlet weak var termsText: UITextView!
    @IBOutlet weak var termsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pushBackIntro(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func termsButton(sender: AnyObject) {
        if termsButton.tag == 0 {
            termsButton.tag = 1
            termsButton.selected = true
        }
        else if termsButton.tag == 1 {
            termsButton.tag = 0
            termsButton.selected = false
        }
    }

}