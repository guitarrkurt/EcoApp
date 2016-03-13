//
//  ActivityViewController.swift
//  ParqueEcologico
//
//  Created by guitarrkurt on 29/01/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit
import Social

class ActivityViewController: UIViewController {

    @IBOutlet weak var imageViewNorth: UIImageView!
    @IBOutlet weak var imageViewSouth: UIImageView!
    var noLabel = Int()
    
    @IBOutlet weak var share: UIButton!
    var imageList = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for i in 1...7{
            let imageName = "run\(i)"
            imageList.append(UIImage(named: imageName)!)
        }
        
        self.imageViewNorth.animationImages = imageList
        let time =  9.3
    
        self.imageViewNorth.animationDuration = time
        self.imageViewNorth.animationRepeatCount = 100
        
        self.imageViewNorth.startAnimating()
        
        
        
        

    }

    @IBAction func shareAction(sender: UIButton) {
        // Create the action sheet
        let myActionSheet = UIAlertController(title: "👩‍👩‍👧‍👦Comparte con tus amigos", message: "¡¡¡Valora los espacios, son tuyos ❤️!!!", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        // facebook action button
        let facebookAction = UIAlertAction(title: "🔵 FaceBook", style: UIAlertActionStyle.Default) { (action) in
            print("facebook action button tapped")
            
            if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
                let fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
                fbShare.setInitialText("#Innovaton 2016 💡 #Transformando Puebla Parques 🌳")
                self.presentViewController(fbShare, animated: true, completion: nil)
                
            } else {
                let alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
        
        // twitter action button
        let twitterAction = UIAlertAction(title: "🔵 Twitter", style: UIAlertActionStyle.Default) { (action) in
            print("twitter action button tapped")
            
            if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
                
                let tweetShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
                tweetShare.setInitialText("#Innovaton 2016 💡 #Transformando Puebla Parques 🌳")
                self.presentViewController(tweetShare, animated: true, completion: nil)
                
            } else {
                
                let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to tweet.", preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
        
        // cancel action button
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) { (action) in
            print("Cancel action button tapped")
        }
        
        // add action buttons to action sheet
        myActionSheet.addAction(facebookAction)
        myActionSheet.addAction(twitterAction)
        myActionSheet.addAction(cancelAction)
        
        // support iPads (popover view)
        myActionSheet.popoverPresentationController?.sourceView = self.share
        myActionSheet.popoverPresentationController?.sourceRect = self.share.bounds
        
        // present the action sheet
        self.presentViewController(myActionSheet, animated: true, completion: nil)
        
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
