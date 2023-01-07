//
//  ButtonMediaAllScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct ButtonMediaAllScreen: View {
    var body: some View {
        HStack(spacing: 40) {
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayerAllScreen.backTrack )
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
            
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayer.playButton)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
            
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayerAllScreen.nextTrack)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
        }
    }
}
