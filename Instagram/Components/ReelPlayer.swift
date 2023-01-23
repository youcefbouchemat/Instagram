//
//  ReelPlayer.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct ReelPlayer: View {
    
    @Binding var reel: Reel;
    
    var body: some View {
        ZStack{
            if let player = reel.player{
                CustomVideoPlayer(player: player)
                
                VStack{
                    HStack{
                        
                    }
                }
            }
        }
    }
}
