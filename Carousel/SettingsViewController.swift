//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Jared on 2/11/16.
//  Copyright © 2016 plainspace. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    @IBOutlet weak var didPressClose: UIButton!
    
    @IBAction func didPressClose(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var didPressSignOut: UIButton!
    
    @IBAction func didPressSignOut(sender: AnyObject) {
    
        let alertController = UIAlertController(title: "Are you sure you want to log out?", message: "", preferredStyle: .ActionSheet)
        
        let logoutAction = UIAlertAction(title: "Log Out", style: .Destructive) { (action) in
            // handle case of user logging out
            
            self.performSegueWithIdentifier("signOutSegue", sender: nil)
        }
        // add the logout action to the alert controller
        alertController.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // handle case of user canceling. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alert controller
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSize(width: 320, height: 760)
        
        settingsScrollView.delegate = self
        
        // performSegueWithIdentifier("signOutSegue", sender: self)
        
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
