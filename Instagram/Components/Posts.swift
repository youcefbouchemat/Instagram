//
//  Posts.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct Posts: View {
    var body: some View {
        ScrollView{
            StoriesList()
            ForEach(1..<4){ index in
                Post(name: "Youcef", profileImage: "people_\(index)", postImage: "post_\(index)", numberOfLikes: 4, content: "hey you all")
            }
        }
        
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
