//
//  ProfileInfoReelScreen.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct ProfileInfoReelScreen: View {
    private let profileImageDimension: CGFloat = 35;
    
    var body: some View {
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
        }.foregroundColor(.white)
    }
}

struct ProfileInfoReelScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoReelScreen()
    }
}
