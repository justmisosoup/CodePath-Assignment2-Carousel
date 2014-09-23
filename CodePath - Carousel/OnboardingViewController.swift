//
//  OnboardingViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/19/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var toggleSwitch: UISwitch!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var takeCarousel: UIButton!
    @IBOutlet weak var onboardingScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingScrollView.contentSize = CGSize(width: 1280, height: 568)
        onboardingScrollView.delegate = self
        takeCarousel.alpha = 0
        toggleSwitch.alpha = 0
        
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
    func scrollViewDidEndDecelerating(onboardingScrollView: UIScrollView) {
        var page : Int = Int(round(onboardingScrollView.contentOffset.x / 320))
        
        pageController.currentPage = page
        
        if (page == 3) {
            UIView.animateWithDuration(0.5) {
                self.pageController.alpha = 0
                self.takeCarousel.alpha = 1
                self.toggleSwitch.alpha = 1
                self.view.bringSubviewToFront(self.takeCarousel)
            }
        }
    }


}

