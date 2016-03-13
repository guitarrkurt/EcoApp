//
//  TiroViewController.swift
//  Eco Park
//
//  Created by guitarrkurt on 29/01/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit

class TiroViewController: UIViewController {

    
    var imageList = [UIImage]()
    @IBOutlet weak var imageViewNorth: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 1...9{
            let imageName = "tiro\(i)"
            imageList.append(UIImage(named: imageName)!)
        }
        
        self.imageViewNorth.animationImages = imageList
        let time =  14.0
        
        self.imageViewNorth.animationDuration = time
        self.imageViewNorth.animationRepeatCount = 100
        
        self.imageViewNorth.startAnimating()
        
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
