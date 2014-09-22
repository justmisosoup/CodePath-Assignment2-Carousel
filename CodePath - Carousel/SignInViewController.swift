//
//  SignInViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/19/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var activityLoaderView: UIActivityIndicatorView!
    @IBAction func onLoginButton(sender: UIButton) {
        
        // Start animating activityLoaderView when onLoginButton is tapped
        
        activityLoaderView.startAnimating()
        
        // Delay with activityLoaderView for 2 seconds
        
        delay(2, closure: { () -> () in
            
            // Check to see if emailTextField has the proper credentials - email & password, which I have set to "tim@codepath.com" and "Password"... :)
            
            if(self.emailTextField.text == "tim@codepath.com" ) && (self.passwordTextField.text == "Password") {
                self.activityLoaderView.stopAnimating()
                self.performSegueWithIdentifier("logInSegue", sender: self)
                
            }
            
            // In the event that the user has not entered in the proper credentials prompt a UIAlertView
                
            else {
                
                UIAlertView(title: "Uh oh!", message: "You need to enter in a valid email address and password!", delegate: nil, cancelButtonTitle: "Try Again...").show()
            }
            
            // Stop animating after the UIAlertView has been prompted and dismissed
            
            self.activityLoaderView.stopAnimating()
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Tap anywhere outside of the keyboard in order to dismiss it.
    
    @IBAction func onTapDismissKeyboard(sender: AnyObject) {
        
        view.endEditing(true)
    }
    

    @IBAction func pushBackToIntro(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
