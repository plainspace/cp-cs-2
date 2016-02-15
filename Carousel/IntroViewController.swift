//
//  IntroViewController.swift
//  Carousel
//
//  Created by Jared on 2/10/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var intro1View: UIImageView!
    @IBOutlet weak var intro2View: UIImageView!
    @IBOutlet weak var intro3View: UIImageView!
    @IBOutlet weak var intro4View: UIImageView!
    @IBOutlet weak var intro5View: UIImageView!
    @IBOutlet weak var intro6View: UIImageView!
    
    @IBOutlet weak var introScrollView: UIScrollView!
    
//    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
//    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
//    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
//    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
//    
//    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
//        let ratio = (r2Max - r2Min) / (r1Max - r1Min)
//        return value * ratio + r2Min - r1Min * ratio
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = CGSize(width: 320, height: 1136)
        
        introScrollView.delegate = self
        
        // intro initial position
        intro1View.transform = CGAffineTransformMakeTranslation(-50, -300)
        intro1View.transform = CGAffineTransformScale(intro1View.transform, CGFloat(1.1), CGFloat(1.1))
        intro1View.transform = CGAffineTransformRotate(intro1View.transform, CGFloat(Double(-1) * M_PI / 180))
        
        intro2View.transform = CGAffineTransformMakeTranslation(60, -290)
        intro2View.transform = CGAffineTransformScale(intro2View.transform, CGFloat(1.6), CGFloat(1.6))
        intro2View.transform = CGAffineTransformRotate(intro2View.transform, CGFloat(Double(-10) * M_PI / 180))
        
        intro3View.transform = CGAffineTransformMakeTranslation(30, -450)
        intro3View.transform = CGAffineTransformScale(intro3View.transform, CGFloat(1.6), CGFloat(1.6))
        intro3View.transform = CGAffineTransformRotate(intro3View.transform, CGFloat(Double(20) * M_PI / 180))
        
        intro4View.transform = CGAffineTransformMakeTranslation(130, -430)
        intro4View.transform = CGAffineTransformScale(intro4View.transform, CGFloat(1.6), CGFloat(1.6))
        intro4View.transform = CGAffineTransformRotate(intro4View.transform, CGFloat(Double(10) * M_PI / 180))
        
        intro5View.transform = CGAffineTransformMakeTranslation(-110, -530)
        intro5View.transform = CGAffineTransformScale(intro5View.transform, CGFloat(1.8), CGFloat(1.8))
        intro5View.transform = CGAffineTransformRotate(intro5View.transform, CGFloat(Double(20) * M_PI / 180))
        
        intro6View.transform = CGAffineTransformMakeTranslation(-60, -530)
        intro6View.transform = CGAffineTransformScale(intro6View.transform, CGFloat(1.6), CGFloat(1.6))
        intro6View.transform = CGAffineTransformRotate(intro6View.transform, CGFloat(Double(-4) * M_PI / 180))
        
        // Do any additional setup after loading the view.
    }
    
    let scollViewMinMax = -20...562
    let scrollViewMin = -20
    let scrollViewMax = 562
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        // scroll view position
        let scrollViewPosition = CGFloat(scrollView.contentOffset.y)
        
        print(scrollViewPosition)
        
        // intro 1 image match value to scroll view position
        let intro1y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -300, r2Max: 0)
        let intro1x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -50, r2Max: 0)
        let intro1scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.1, r2Max: 1)
        let intro1rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -1, r2Max: 0)
        
        intro1View.transform = CGAffineTransformMakeTranslation(CGFloat(intro1x), CGFloat(intro1y))
        intro1View.transform = CGAffineTransformScale(intro1View.transform, CGFloat(intro1scale), CGFloat(intro1scale))
        intro1View.transform = CGAffineTransformRotate(intro1View.transform, CGFloat(Double(intro1rotation) * M_PI / 180))
        
        
        // intro 2 image match value to scroll view position, scale and rotation
        let intro2y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -290, r2Max: 0)
        let intro2x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 60, r2Max: 0)
        let intro2scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.6, r2Max: 1)
        let intro2rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -10, r2Max: 0)
        
        intro2View.transform = CGAffineTransformMakeTranslation(CGFloat(intro2x), CGFloat(intro2y))
        intro2View.transform = CGAffineTransformScale(intro2View.transform, CGFloat(intro2scale), CGFloat(intro2scale))
        intro2View.transform = CGAffineTransformRotate(intro2View.transform, CGFloat(Double(intro2rotation) * M_PI / 180))
        
        
        // intro 3 image match value to scroll view position
        let intro3y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -450, r2Max: 0)
        let intro3x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 30, r2Max: 0)
        let intro3scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.6, r2Max: 1)
        let intro3rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 20, r2Max: 0)
        
        intro3View.transform = CGAffineTransformMakeTranslation(CGFloat(intro3x), CGFloat(intro3y))
        intro3View.transform = CGAffineTransformScale(intro3View.transform, CGFloat(intro3scale), CGFloat(intro3scale))
        intro3View.transform = CGAffineTransformRotate(intro3View.transform, CGFloat(Double(intro3rotation) * M_PI / 180))
        
        // intro 4 image match value to scroll view position
        let intro4y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -430, r2Max: 1)
        let intro4x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 130, r2Max: 0)
        let intro4scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.6, r2Max: 1)
        let intro4rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 10, r2Max: 0)
        
        intro4View.transform = CGAffineTransformMakeTranslation(CGFloat(intro4x), CGFloat(intro4y))
        intro4View.transform = CGAffineTransformScale(intro4View.transform, CGFloat(intro4scale), CGFloat(intro4scale))
        intro4View.transform = CGAffineTransformRotate(intro4View.transform, CGFloat(Double(intro4rotation) * M_PI / 180))
        
        // intro 5 image match value to scroll view position
        let intro5y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -530, r2Max: 1)
        let intro5x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -110, r2Max: 0)
        let intro5scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.8, r2Max: 1)
        let intro5rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 20, r2Max: 0)
        
        intro5View.transform = CGAffineTransformMakeTranslation(CGFloat(intro5x), CGFloat(intro5y))
        intro5View.transform = CGAffineTransformScale(intro5View.transform, CGFloat(intro5scale), CGFloat(intro5scale))
        intro5View.transform = CGAffineTransformRotate(intro5View.transform, CGFloat(Double(intro5rotation) * M_PI / 180))
        
        // intro 6 image match value to scroll view position
        let intro6y = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -530, r2Max: 0)
        let intro6x = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -60, r2Max: 0)
        let intro6scale = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: 1.6, r2Max: 1)
        let intro6rotation = convertValue(scrollViewPosition, r1Min: -20, r1Max: 562, r2Min: -4, r2Max: 0)
        
        intro6View.transform = CGAffineTransformMakeTranslation(CGFloat(intro6x), CGFloat(intro6y))
        intro6View.transform = CGAffineTransformScale(intro6View.transform, CGFloat(intro6scale), CGFloat(intro6scale))
        intro6View.transform = CGAffineTransformRotate(intro6View.transform, CGFloat(Double(intro6rotation) * M_PI / 180))
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
