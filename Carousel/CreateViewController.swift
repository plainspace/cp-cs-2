//
//  CreateViewController.swift
//  Carousel
//
//  Created by Jared on 2/12/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var createScrollView: UIScrollView!
    @IBOutlet weak var createParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var checkBoxButton: UIButton!
    
    @IBAction func didTouchBackButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    var initialYcreateParentView: CGFloat!
    var offsetcreateParentView: CGFloat!
    
    var initialYbuttonParentView: CGFloat!
    var offsetbuttonParentView: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createScrollView.delegate = self
        
        createScrollView.contentSize = createScrollView.frame.size
        
        createScrollView.contentInset.bottom = 100
        
        initialYcreateParentView = createParentView.frame.origin.y
        offsetcreateParentView = -83
        
        initialYbuttonParentView = buttonParentView.frame.origin.y
        offsetbuttonParentView = -205
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        
        createParentView.transform = transform
        
        createParentView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) { () -> Void in
            
            self.createParentView.transform = CGAffineTransformIdentity
            
            self.createParentView.alpha = 1
            
        }
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        createParentView.frame.origin.y = initialYcreateParentView + offsetcreateParentView
        
        buttonParentView.frame.origin.y = initialYbuttonParentView + offsetbuttonParentView
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        createParentView.frame.origin.y = initialYcreateParentView
        
        buttonParentView.frame.origin.y = initialYbuttonParentView
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    @IBAction func checkBoxButton(sender: AnyObject) {
        checkBoxButton.selected = !checkBoxButton.selected
    }
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
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
