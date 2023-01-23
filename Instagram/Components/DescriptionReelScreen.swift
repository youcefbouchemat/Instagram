//
//  DescriptionReelScreen.swift
//  Instagram
//
//  Created by apple on 23/1/2023.
//

import SwiftUI

struct DescriptionReelScreen: View {
    
    private let moreDescription:String = "English is a vital tool to connect with people from all over the world, and to explore new cultures and possibilities. Whether you are looking for a new adventure, or preparing for your future, studying English opens up opportunities. With over 30 years of experience, UCEDA International has become a leader in teaching English as a Second Language (ESL) with accredited programs for all levels of language learning.";
    
    @State private var showMore: Bool = false;
    
    var title:String;
    
    
    var body: some View {
        ZStack{
            if showMore {
                ScrollView(.vertical,showsIndicators: false){
                    
                    Button(action: {
                        withAnimation{showMore.toggle()}
                    }, label: {
                        Text(title + moreDescription)
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    })
                }.frame(height: 120)
            }
            else{
                Button(action: {
                    withAnimation{showMore.toggle()}
                }, label: {
                    HStack{
                        Text(title)
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .lineLimit(1)
                        
                        Text("more")
                            .font(.callout.bold())
                            .foregroundColor(.gray)
                    }
                    .padding(.top,6)
                })
                
            }
        }
    }
}

struct DescriptionReelScreen_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionReelScreen(title: "cededed")
    }
}
