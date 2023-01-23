//
//  CustomVideoPlayer.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {
    
    var player: AVPlayer;
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController();
        
        controller.player = player;
        controller.showsPlaybackControls = false;
        controller.videoGravity = .resizeAspectFill;
        
        return controller;
        
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
    
  
    
    typealias UIViewControllerType = AVPlayerViewController;
}
