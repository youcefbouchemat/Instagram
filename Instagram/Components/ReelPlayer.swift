//
//  ReelPlayer.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct ReelPlayer: View {
    
    @Binding var reel: Reel;
    
    @State private var showMore: Bool = false;
    
    var body: some View {
        ZStack{
            if let player = reel.player{
                CustomVideoPlayer(player: player)
                
                Color.black.opacity(showMore ? 0.35 : 0)
                    .onTapGesture {
                        withAnimation{
                            showMore.toggle()
                        }
                    }
                
                VStack{
                    
                    HStack(alignment: .bottom){
                        
                        VStack(alignment: .leading, spacing: 10){
                            ProfileInfoReelScreen()
                            DescriptionReelScreen(showMore: $showMore,title: reel.mediafile.title)
                        }
                        
                        Spacer()
                        OptionButtonsReelScreen()
                    }
                }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomLeading)
                    .padding()
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

