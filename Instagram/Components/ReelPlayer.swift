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
                    
                    HStack(alignment: .bottom){
                        
                        VStack(alignment: .leading, spacing: 10){
                            ProfileInfoReelScreen()
                            DescriptionReelScreen(title: reel.mediafile.title)
                        }
                        
                        Spacer()
                        OptionButtonsReelScreen()
                    }
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
            }
        }
    }
}

/*
struct ReelPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ReelPlayer(reel: reel)
    }
}*/

