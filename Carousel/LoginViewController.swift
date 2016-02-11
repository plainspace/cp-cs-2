//
//  LoginViewController.swift
//  Carousel
//
//  Created by Jared on 2/10/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var loginNavBar: UIImageView!
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var signInButton: UIButton!
    
//    func moveElementsUp() {
//        UIView.animateWithDuration(0.3, animations: {
//            self.fieldParentView.frame.origin.y = -10
//            self.buttonParentView.frame.origin.y = 235
//            print("Moving Elements Up")
//            
//            // Text fields and buttons move up to make room for the keyboard
//        })
//    }
//    
//    func moveElementsDown() {
//        UIView.animateWithDuration(0.3, animations: {
//            self.fieldParentView.frame.origin.y = 65
//            self.buttonParentView.frame.origin.y = 450
//            print("Moving Elements Down")
//            
//            // Text fields and buttons move up to make room for the keyboard
//        })
//    }
    
    @IBAction func didTapSignInButton(sender: AnyObject) {
        
        print("Sign In Button Pressed")
        
        if emailField.text!.isEmpty && passwordField.text!.isEmpty {
            
            print("Alert! email and password are empty")
            
            let alertController = UIAlertController(title: "Whoops!", message: "You need to enter a name and password", preferredStyle: .Alert)
            
            // create a cancel action
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                // handle cancel response here. Doing nothing will dismiss the view.
            }
            // add the cancel action to the alertController
            alertController.addAction(cancelAction)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
        
        } else if emailField.text == "asdf" && passwordField.text == "asdf" {
            
            print("Checking email and password")
            // print("Logging in")
            self.view.endEditing(true)
            self.activityIndicator.startAnimating()
            
            delay(2, closure: { () -> () in
                
                print("Logging in")
                
            })
            
        } else if emailField.text != nil || passwordField.text != nil {
            
            print("Email or password are missing or incorrect")
            
            if emailField.text!.isEmpty {
                
                let alertController = UIAlertController(title: "Email required", message: "Please enter your email address", preferredStyle: .Alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            }
            
            if passwordField.text!.isEmpty {
                
                let alertController = UIAlertController(title: "Password required", message: "Please enter your password", preferredStyle: .Alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            } else {
                
                let alertController = UIAlertController(title: "Access denied", message: "Wrong user name and password", preferredStyle: .Alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
            }
            
        }
        
    }
    
    var initialYfieldParentView: CGFloat!
    var offsetfieldParentView: CGFloat!
    
    var initialYbuttonParentView: CGFloat!
    var offsetbuttonParentView: CGFloat!
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginScrollView.delegate = self
        
        loginScrollView.contentSize = loginScrollView.frame.size
        
        loginScrollView.contentInset.bottom = 100
        
        initialYfieldParentView = fieldParentView.frame.origin.y
        offsetfieldParentView = -83
        
        initialYbuttonParentView = buttonParentView.frame.origin.y
        offsetbuttonParentView = -113
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) { () -> Void in
        
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
            
        }
    }
    func keyboardWillShow(notification: NSNotification!) {
        
        fieldParentView.frame.origin.y = initialYfieldParentView + offsetfieldParentView
        
        buttonParentView.frame.origin.y = initialYbuttonParentView + offsetbuttonParentView
        
        // SignUpLink.hidden = true
        
//        self.SignUpLink.fadeOut()
        
        // print("move parent views up")
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        fieldParentView.frame.origin.y = initialYfieldParentView
        
        buttonParentView.frame.origin.y = initialYbuttonParentView
        
//        UIView.animateWithDuration(1.5, animations: {
//            self.SignUpLink.alpha = 1.0
//        })
        
        // SignUpLink.hidden = false
        
        // self.SignUpLink.fadeIn()
        
        
        // print("move parent views down")
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
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
