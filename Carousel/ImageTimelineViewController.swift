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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrubberScrollView.contentSize = CGSize(width: 1000, height: 36)
        
        scrubberScrollView.delegate = self
        
        imageTimelineScrollView.contentSize = CGSize(width: 320, height: 1673)
        
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
