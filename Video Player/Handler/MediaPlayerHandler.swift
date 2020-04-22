//
//  MediaPlayerHandler.swift
//  Video Player
//
//  Created by TPFLAP146 on 22/04/20.
//  Copyright © 2020 vijay. All rights reserved.
//

import Foundation
import AVKit
import UIKit

class MediaPlayer {
    
    static func openMedia(url:String,viewController:UIViewController) {
        
        guard let videoURL = URL(string: url) else {
            return
        }
        
        let player = AVPlayer(url: videoURL)
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player

        viewController.present(playerViewController, animated: true) {
          player.play()
        }
    }
    
}



