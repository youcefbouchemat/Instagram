//
//  OptionButtonsReelScreen.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct OptionButtonsReelScreen: View {
    var body: some View {
        VStack(alignment: .trailing,spacing: 30){
            Button(action: {
                
            }, label: {
                VStack(spacing: 10){
                    Image(systemName: "heart")
                        .font(.system(size: 25))
                    Text("223K")
                }
            })
            
            Button(action: {
                
            }, label: {
                VStack(spacing: 10){
                    Image(systemName: "bubble.left")
                        .font(.system(size: 25))
                    Text("245")
                }
            })
            Button(action: {
                
            }, label: {
                VStack(spacing: 10){
                    Image(systemName: "paperplane")
                        .font(.system(size: 25))
                }
            })
            Button(action: {
                
            }, label: {
                VStack(spacing: 10){
                    Image(systemName: "ellipsis")
                        .font(.system(size: 25))
                }
            })
        }.foregroundColor(Color("secondaryColor"))
            .padding(.bottom,20)
    }
}

struct OptionButtonsReelScreen_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonsReelScreen()
    }
}
