//
//  SearchMainScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct SearchMainScreen: View {
//    var animation: Namespace.ID
//    @Binding var expand: Bool
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                SearchScreen()
//                MusicPlayerView(animation: animation, expand: $expand)
            }
            .padding(.bottom, 90)
        }
    }
}
