//
//  PostFooter.swift
//  Instagram
//
//  Created by apple on 19/1/2023.
//

import SwiftUI

struct PostFooter: View {

    var name: String;
    var numberOfLikes: Int;
    var content: String;
    
    var body: some View {
        VStack(alignment: .leading){
            if numberOfLikes > 0 {
                Text("\(numberOfLikes) likes")
                    .fontWeight(.bold)
            }
            HStack{
                Text("\(name)")
                    .font(.headline)
                Text("\(content)")
                    .font(.body)
            }

        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
    }
}

struct PostFooter_Previews: PreviewProvider {
    static var previews: some View {
        PostFooter(name: "youcef", numberOfLikes: 5, content: "jejejdj dedjehdje")
    }
}
