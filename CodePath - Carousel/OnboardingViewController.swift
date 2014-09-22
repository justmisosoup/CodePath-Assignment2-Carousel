//
//  OnboardingViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/19/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingScrollView: UIScrollView!
    override func viewDidLoad() {
        
        super.viewDidLoad(onboardingScrollView.contentSize = CGSize(width: 1290, height: 568))
        
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
