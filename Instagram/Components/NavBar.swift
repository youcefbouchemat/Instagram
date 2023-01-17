//
//  NavBar.swift
//  Instagram
//
//  Created by apple on 17/1/2023.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        HStack{
            Text("Instagram")
                .font(.custom("Billabong", size: 40))
            
            Image(systemName: "chevron.down")
                .font(.system(size: 15))
            
            Spacer()
            HStack{
                Image(systemName: "plus.app")
                    .font(.system(size: 25))
                
                Image(systemName: "heart")
                    .font(.system(size: 25))
                
                Image(systemName: "bolt.horizontal.circle")
                    .font(.system(size: 25))
            }
        }.padding()
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
