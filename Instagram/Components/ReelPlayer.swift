//
//  ReelPlayer.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct ReelPlayer: View {
    
    @Binding var reel: Reel;
    
    private let profileImageDimension: CGFloat = 35;
    
    var body: some View {
        ZStack{
            if let player = reel.player{
                CustomVideoPlayer(player: player)
                
                VStack{
                    
                    HStack(alignment: .bottom){
                        
                        VStack(alignment: .leading, spacing: 10){
                            
                            HStack(spacing: 15){
                                
                                Image("people_\(Int.random(in: 1..<9))")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: profileImageDimension,height: profileImageDimension)
                                    .cornerRadius(profileImageDimension/2)
                             
                                Text("Youcef Bouchemat")
                                    .font(.callout.bold())
                                
                                Button(action: {
                                    
                                }, label: {
                                    Text("Follow")
                                        .font(.caption.bold())
                                })
                            }
                        }
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

