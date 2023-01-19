//
//  Post.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct Post: View {
    var name: String;
    var profileImage: String;
    var postImage: String;
    var numberOfLikes:Int;
    var content:String;
    
    init(name: String, profileImage: String, postImage: String, numberOfLikes: Int, content: String) {
        self.name = name
        self.profileImage = profileImage
        self.postImage = postImage
        self.numberOfLikes = numberOfLikes
        self.content = content
    }
    
    var body: some View {
        VStack{
            PostHeader(name: name, image: profileImage)
            PostContent(image: postImage)
            PostFooter(name: name, numberOfLikes: numberOfLikes, content: content)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(name: "hamid", profileImage: "people_1", postImage: "post_1", numberOfLikes: 1, content: "hhhhhhh")
    }
}
