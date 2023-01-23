//
//  ReelsScreen.swift
//  Instagram
//
//  Created by apple on 21/1/2023.
//

import SwiftUI
import AVKit

struct ReelsScreen: View {
    
    @State var currentReel = "";
    
    @State var reels = MediaFileJSON.map{item -> Reel in
        let url = Bundle.main.path(forResource: item.url, ofType: "mp4") ?? "";
        let player = AVPlayer(url: URL(fileURLWithPath: url));
        return Reel(player: player,mediafile: item)
        
    }
    
    var body: some View {
        
        GeometryReader{ proxy in
            let size = proxy.size;
            
            TabView(selection: $currentReel){
                ForEach($reels){ $reel in
                    ReelPlayer(reel: $reel)
                        .frame(width: size.width)
                        .rotationEffect(.degrees(-90))
                        .ignoresSafeArea(.all,edges: .top)
                }
            }
            .rotationEffect(.degrees(90))
            .frame(width: size.height)
            .frame(width: size.width)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea(.all,edges: .top)
            
        }.ignoresSafeArea(.all,edges: .top)
            .background(Color("AccentColor"))
    }
}

struct ReelsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReelsScreen()
    }
}
