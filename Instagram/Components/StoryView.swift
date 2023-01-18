//
//  StoryView.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct StoryView: View {
    private let storyDimension: CGFloat = 70;
    
    var image: String;
    var name: String;
    
    init(image: String, name: String) {
        self.image = image
        self.name = name
    }
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .frame(width: storyDimension,height: storyDimension)
                .cornerRadius(storyDimension/2)
                .overlay(){
                    Circle()
                        .stroke(
                            LinearGradient(colors: [.blue,.purple,.red,.pink,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                            ,lineWidth: 2.5
                        ) .frame(width: storyDimension + 5,height: storyDimension + 5)
                    
                }
            Text(name)
                .font(.caption)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(image: "istockphoto-1007763808-612x612", name: "String")
    }
}
