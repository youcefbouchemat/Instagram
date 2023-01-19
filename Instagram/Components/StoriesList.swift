//
//  StoriesList.swift
//  Instagram
//
//  Created by apple on 18/1/2023.
//

import SwiftUI

struct StoriesList: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack (spacing: 20){
                ForEach(1..<9) { index in
                    StoryView(image: "people_\(index)", name: randomString(length: index + 3))
                }
            }.padding()
        }
    }
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}

struct StoriesList_Previews: PreviewProvider {
    static var previews: some View {
        StoriesList()
    }
}
