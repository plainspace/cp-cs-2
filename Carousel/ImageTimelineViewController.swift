//
//  ImageTimelineViewController.swift
//  Carousel
//
//  Created by Jared on 2/11/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var timelineImage: UIImageView!
    
    @IBOutlet weak var scrubberScrollView: UIScrollView!
    @IBOutlet weak var scrubberImageView: UIImageView!
    
    @IBOutlet weak var tutorialBannerView: UIImageView!
    @IBOutlet weak var tutorialButton: UIButton!
    @IBOutlet weak var tutorialBannerCloseButton: UIButton!
    
    
    @IBOutlet weak var imageTimelineScrollView: UIScrollView!
    
    @IBAction func didTapConversationsButton(sender: AnyObject) {
    
    }
    
    var initialYtimelineScrollView: CGFloat!
    var offsettimelineScrollView: CGFloat!
    
    var initialYtutorialBannerView: CGFloat!
    var offsettutorialBannerView: CGFloat!
    
    var defaults = NSUserDefaults.standardUserDefaults()
    
    @IBAction func didPresstutorialBannerClose(sender: AnyObject) {
//        defaults.setBool(true, forKey: "dismissTutorial")
//        UIView.animateWithDuration(0.3, animations: {self.didPresstutorialBannerClose()
//        })

        timelineScrollView.frame.origin.y = -44
//        timelineScrollView.frame.size.height = 467
        tutorialBannerView.alpha = 0
        tutorialButton.alpha = 0
        tutorialBannerCloseButton.alpha = 0
        tutorialButton.enabled = false
        tutorialBannerCloseButton.enabled = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        scrubberScrollView.contentSize = CGSize(width: 1000, height: 36)
        
        //        imageTimelineScrollView.contentSize = CGSize(width: 320, height: 1673)
        
        
        imageTimelineScrollView.contentSize = timelineImage.image!.size
        scrubberScrollView.contentSize = scrubberImageView.image!.size
        scrubberScrollView.delegate = self
        imageTimelineScrollView.delegate = self
        
        // Do any additional setup after loading the view.
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
