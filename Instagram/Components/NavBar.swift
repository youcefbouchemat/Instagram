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
                .font(.custom("Billabong", size: 48))
            HStack{
                
            }
        }.padding()
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
