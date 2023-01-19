//
//  PostContent.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct PostContent: View {
    var image: String;
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .frame(width: .infinity,height: 300)
            HStack{
                HStack (spacing: 15){
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                }
                Spacer()
                Image(systemName: "bookmark")
            }.padding(.horizontal)
                .font(.system(size: 23))
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent(image: "post_2")
    }
}
