//
//  TestPlayerViewController.swift
//  TVMediaPlayer
//
//  Created by J. B. Whiteley on 1/9/16.
//  Copyright © 2016 SwiftBit. All rights reserved.
//

import UIKit
import TVMediaPlayer
import AVFoundation

class TestPlayerViewController:MediaPlayerViewController {
    let testMediaPlayer = TestMediaPlayer()
    
    init() {
        super.init(mediaPlayer: testMediaPlayer, mediaItem: testMediaPlayer)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let playerLayer = AVPlayerLayer(player: self.testMediaPlayer.player)
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.frame = canvasView.bounds
        self.canvasView.layer.addSublayer(playerLayer)
    }
}