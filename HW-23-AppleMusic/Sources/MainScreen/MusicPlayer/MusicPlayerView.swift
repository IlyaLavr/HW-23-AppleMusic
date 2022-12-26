//
//  MusicPlayerView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct MusicPlayerView: View {
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: Strings.MusicPlayer.currentImageTrack)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(7)
                    .opacity(0.3)
                
                Text(Strings.MusicPlayer.currentNameTrack)
                Spacer()
                Button(action: { }) {
                    Image(systemName: Strings.MusicPlayer.playButton)
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 25, height: 25)
                        .opacity(0.7)
                }
                Button(action: { }) {
                    Image(systemName: Strings.MusicPlayer.nextTrackButton)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                        .opacity(0.7)
                }
            }
            .padding(EdgeInsets(top: 5, leading: 30, bottom: 5, trailing: 25))
        }
        .frame(height: 65)
        .background(BlurView())
    }
    
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}


