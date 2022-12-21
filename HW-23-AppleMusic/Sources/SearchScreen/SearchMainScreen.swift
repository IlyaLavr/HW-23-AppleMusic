//
//  SearchMainScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//
import SwiftUI

struct SearchMainScreen: View {
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom) {
                SearchScreen()
                MusicPlayerView()
            }
        }
    }
}

struct SearchMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchMainScreen()
    }
}

