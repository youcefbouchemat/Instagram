//
//  PostHeader.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct PostHeader: View {
    private let profileDimension: CGFloat = 50;
    
    var name: String;
    var image: String;
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .frame(width: profileDimension,height: profileDimension)
                .cornerRadius(profileDimension/2)
            Text(name)
                .font(.headline)
            Spacer()
            Image(systemName: "ellipsis")
                .font(.system(size: 20))
                .rotationEffect(.degrees(90.0))
        }.padding(.horizontal)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader(name: "youcef", image: "people_1")
    }
}
