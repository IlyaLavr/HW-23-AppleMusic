//
//  VolumeControl.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct VolumeControl: View {
    @State var volume: CGFloat = 0
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: Strings.MusicPlayerAllScreen.leftIconVolume)
                .foregroundColor(.white)
            Slider(value: $volume)
                .accentColor(.white)
            Image(systemName: Strings.MusicPlayerAllScreen.rightIconVolume)
                .foregroundColor(.white)
        }
    }
}
