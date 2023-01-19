//
//  ContentView.swift
//  Instagram
//
//  Created by apple on 17/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    Image(systemName: "house")
                }
            Text("Second screen content")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Text("Thered screen content")
                .tabItem{
                    Image(systemName: "livephoto.play")
                }
            Text("Second screen content")
                .tabItem{
                    Image(systemName: "handbag")
                }
            Text("Second screen content")
                .tabItem{
                    Image(systemName: "person")
                }
        }.accentColor(Color.black)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
