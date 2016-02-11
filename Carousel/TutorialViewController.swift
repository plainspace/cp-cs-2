//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Jared on 2/11/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var tutorialScrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var spinButtonParentContainer: UIView!
    
    @IBOutlet weak var spinButtonImage: UIImageView!
    
    @IBOutlet weak var spinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        
        tutorialScrollView.delegate = self
        
        spinButtonParentContainer.alpha = 1
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        if page == 3 {
            pageControl.hidden = true
//            UIView.animateWithDuration(0.3) { () -> Void in
//                
//                print("spin button showing")
//
//                self.spinButtonParentContainer.transform = CGAffineTransformIdentity
//                
//                self.spinButtonParentContainer.alpha = 1
//                
//            }
            
        } else {
            pageControl.hidden  = false
        }
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }
    
//    override func viewWillAppear(animated: Bool) {
//    
//        let transform = CGAffineTransformMakeScale(0.2, 0.2)
//        
//        spinButtonParentContainer.transform = transform
//        
//        spinButtonParentContainer.alpha = 0
//        
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        
//        UIView.animateWithDuration(0.3) { () -> Void in
//            
//            self.spinButtonParentContainer.transform = CGAffineTransformIdentity
//            
//            self.spinButtonParentContainer.alpha = 1
//            
//        }
//    }
    
    
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
