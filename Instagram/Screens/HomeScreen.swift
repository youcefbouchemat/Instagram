//
//  HomeScreen.swift
//  Instagram
//
//  Created by apple on 19/1/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            NavBar()
            Posts()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
