//
//  IntroViewController.swift
//  Carousel
//
//  Created by Jared on 2/10/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var introScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScrollView.contentSize = CGSize(width: 320, height: 1136)
        
        introScrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
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
