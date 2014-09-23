//
//  IntroScrollViewController.swift
//  CodePath - Carousel
//
//  Created by Sara  on 9/19/14.
//  Copyright (c) 2014 Sara Menefee. All rights reserved.
//

import UIKit

class IntroScrollViewController: UIViewController, UIScrollViewDelegate {
    
    //  Intro Tile Outlets - Call these when animating with the scroll event

    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!
    @IBOutlet weak var introView: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    //  ScrollView - This applies to the scrolling interaction within IntroScrollViewController
    
    @IBOutlet weak var introScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad(introScrollView.contentSize = CGSize(width: 320, height: 1136))
        
    introScrollView.delegate = self
    introScrollView.sendSubviewToBack(introView)
        
    }
 
    func scrollViewDidScroll(introScrollView: UIScrollView) {
        
        var offset = Float(introScrollView.contentOffset.y)
        
        // introTile1 Variables & Transforms
        
        var tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -75, r2Max: 0)
        var ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -280, r2Max: 0)
        var scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        introTile1.transform = CGAffineTransformScale(introTile1.transform, CGFloat(scale1), CGFloat(scale1))
        introTile1.transform = CGAffineTransformRotate(introTile1.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        // introTile2 Variables & Transforms
        
        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 32, r2Max: 0)
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -254, r2Max: 0)
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        introTile2.transform = CGAffineTransformScale(introTile2.transform, CGFloat(scale2), CGFloat(scale2))
        introTile2.transform = CGAffineTransformRotate(introTile2.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        // introTile3 Variables & Transforms
        
        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 8, r2Max: 0)
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        introTile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        introTile3.transform = CGAffineTransformScale(introTile3.transform, CGFloat(scale3), CGFloat(scale3))
        introTile3.transform = CGAffineTransformRotate(introTile3.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        // introTile4 Variables & Transforms
        
        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -400, r2Max: 0)
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        introTile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        introTile4.transform = CGAffineTransformScale(introTile4.transform, CGFloat(scale4), CGFloat(scale4))
        introTile4.transform = CGAffineTransformRotate(introTile4.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        // introTile5 Variables & Transforms
        
        var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -110, r2Max: 0)
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -505, r2Max: 0)
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        introTile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        introTile5.transform = CGAffineTransformScale(introTile5.transform, CGFloat(scale5), CGFloat(scale5))
        introTile5.transform = CGAffineTransformRotate(introTile5.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        // introTile6 Variables & Transforms
        
        var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -98, r2Max: 0)
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -485, r2Max: 0)
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        introTile6.transform = CGAffineTransformScale(introTile6.transform, CGFloat(scale6), CGFloat(scale6))
        introTile6.transform = CGAffineTransformRotate(introTile6.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
