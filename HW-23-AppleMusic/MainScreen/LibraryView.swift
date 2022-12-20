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
                    Image(systemName: "square.stack.fill")
                    Text("Медиатека")
                }
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Медиатека")
                }
                VStack {
                    RadioMainScreen()
                    MusicPlayerView()
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                SearchMainScreen()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            .navigationTitle("Mедиатека")
    }
    
    struct LibraryView_Previews: PreviewProvider {
        static var previews: some View {
            LibraryView()
        }
    }
}

