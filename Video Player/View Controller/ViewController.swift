//
//  ViewController.swift
//  Video Player
//
//  Created by TPFLAP146 on 22/04/20.
//  Copyright © 2020 vijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Change the url here - can be remote or local file
    let videoURLString = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
    
    @IBOutlet weak var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapActionSetup()
    }

    func tapActionSetup() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapAction))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
    }
    
    //Invoking part
    @objc func tapAction() {
        MediaPlayer.openMedia(url:videoURLString,viewController:self)
    }

}

