//
//  SignInViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/19/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate, UIAlertViewDelegate {

    @IBOutlet weak var signInButtonViewContainer: UIView!
    @IBOutlet weak var signInViewContainer: UIView!
    @IBOutlet weak var logInText: UIImageView!
    @IBOutlet weak var logInButtonImg: UIImageView!
    @IBOutlet weak var logInForm: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func onLoginButton(sender: UIButton) {
        
        // Prompt UIAlertView when onLoginButton is tapped
        
        var alertView = UIAlertView(title: "Logging in...", message: nil, delegate: self, cancelButtonTitle: nil)
        alertView.show()
        
        // Delay with UIAlertView for 2 seconds
        
        delay(2, closure: { () -> () in
            
            // Check to see if emailTextField has the proper credentials - email & password, which I have set to "tim@codepath.com" and "Password"... :)
            
            if(self.emailTextField.text == "tim@codepath.com" ) && (self.passwordTextField.text == "Password") {
                alertView.dismissWithClickedButtonIndex(0, animated: true)
                self.performSegueWithIdentifier("logInSegue", sender: self)
                
            }
                
            else if(self.emailTextField.text.isEmpty ) && (self.passwordTextField.text.isEmpty) {
                alertView.dismissWithClickedButtonIndex(0, animated: true)
                UIAlertView(title: "Whoops!", message: "You need to enter in an email and password to log-in.", delegate: nil, cancelButtonTitle: "Try Again...").show()
                
            }
            
            // In the event that the user has not entered in the proper credentials prompt a UIAlertView
                
            else {
                alertView.dismissWithClickedButtonIndex(0, animated: true)
                UIAlertView(title: "Uh oh!", message: "Your log-in credentials were wrong!", delegate: nil, cancelButtonTitle: "Try Again...").show()
            }
            
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
     
    }

    func keyboardWillShow(notification: NSNotification!) {
        
        self.signInViewContainer.tag = Int(self.signInViewContainer.frame.origin.y)
        self.signInButtonViewContainer.tag = Int(self.signInButtonViewContainer.frame.origin.y)

        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
                self.signInViewContainer.frame.origin.y = -26;
                self.signInButtonViewContainer.frame.origin.y = 160;
            
            
            }, completion: nil)

    }
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
           
           self.signInViewContainer.frame.origin.y = CGFloat(self.signInViewContainer.tag);
           self.signInButtonViewContainer.frame.origin.y = CGFloat(self.signInButtonViewContainer.tag);

            }, completion: nil)
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
