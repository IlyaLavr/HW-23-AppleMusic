//
//  LibraryView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        TabView {
            MediatekaView()
                .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemLeft)
                    Text(Strings.Tabbar.tabBarLeftName)
                }
            ZStack(alignment: .bottom) {
                RadioMainScreen()
                MusicPlayerView()
            }
            .tabItem {
                Image(systemName: Strings.Tabbar.tabBarItemMiddle)
                Text(Strings.Tabbar.tabBarMiddleName)
            }
            SearchMainScreen()
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

