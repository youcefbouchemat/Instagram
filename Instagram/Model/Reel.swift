//
//  Reel.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import Foundation
import AVKit

struct Reel: Identifiable{
    var id = UUID().uuidString;
    var player: AVPlayer?;
    var mediafile: MediaFile;
}
