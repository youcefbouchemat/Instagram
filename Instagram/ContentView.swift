//
//  ContentView.swift
//  Instagram
//
//  Created by apple on 17/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavBar()
            Posts()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
