//
//  LibraryView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct LibraryView: View {
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        TabView {
            ZStack(alignment: .bottom){
                MediatekaView()
                MusicPlayerView(animation: animation, expand: $expand)
            }
            .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemLeft)
                    Text(Strings.Tabbar.tabBarLeftName)
                }
            ZStack(alignment: .bottom) {
                RadioMainScreen()
                MusicPlayerView(animation: animation, expand: $expand)
            }
            .tabItem {
                Image(systemName: Strings.Tabbar.tabBarItemMiddle)
                Text(Strings.Tabbar.tabBarMiddleName)
            }
            ZStack(alignment: .bottom) {
                 SearchMainScreen()
                 MusicPlayerView(animation: animation, expand: $expand)
            }
                .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemRigth)
                    Text(Strings.Tabbar.tabBarRigthName)
                }
        }
        .accentColor(.red)
    }
    
    struct LibraryView_Previews: PreviewProvider {
        static var previews: some View {
            LibraryView()
        }
    }
}

