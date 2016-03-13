//
//  DetailMapaViewController.swift
//  ParqueEcologico
//
//  Created by guitarrkurt on 29/01/16.
//  Copyright © 2016 guitarrkurt. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DetailMapaViewController: UIViewController {
    var moviePlayer : AVPlayerViewController!
    let alto = UIScreen.mainScreen().bounds.height
    let ancho = UIScreen.mainScreen().bounds.width
    let moviePath = NSBundle.mainBundle().pathForResource("videogym", ofType: "mp4")
    //
    var playerB: AVPlayer!
    override func viewDidAppear(animated: Bool) {
        if let path = moviePath {
            let url = NSURL.fileURLWithPath(path)
            let player = AVPlayer(URL: url)
            //
            playerB = player
            
            let playerViewController = AVPlayerViewController()
            playerViewController.player = playerB
            
            //Ocultar los botones
            //            playerViewController.showsPlaybackControls = false
            //
            //
            //
            //            self.presentViewController(playerViewController, animated: true) {
            //                if let validPlayer = playerViewController.player {
            //                    validPlayer.play()
            //                }
            //            }
            
            /*Mostrar en una parte*/
            playerViewController.view.frame = CGRectMake(-ancho, 0, ancho*3, alto)
            playerViewController.showsPlaybackControls = false
            self.view.addSubview(playerViewController.view)
            self.addChildViewController(playerViewController)
            
            playerB.play()
            
            NSNotificationCenter.defaultCenter().addObserver(self,
                selector: "playerItemDidReachEnd:",
                name: AVPlayerItemDidPlayToEndTimeNotification,
                object: self.playerB.currentItem)
        }
    }
    
    
    
    func playerItemDidReachEnd(notification: NSNotification) {
        self.playerB.seekToTime(kCMTimeZero)
        self.playerB.play()
    }


}
