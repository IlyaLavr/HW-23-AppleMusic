//
//  PlayProgress.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct PlayProgress: View {
    var body: some View {
        HStack {
            VStack {
                ZStack(alignment: .leading) {
                    //Полоса воспроизведения
                    Capsule()
                        .fill(.white)
                        .frame(height: 4)
                    Circle()
                        .fill(.white)
                        .frame(width: 10, height: 10)
                }
                //Расстояние от краев
                .padding([.leading, .trailing], 20)
                HStack(spacing: 300) {
                    Text(Strings.MusicPlayerAllScreen.passedTime)
                        .font(.footnote)
                        .foregroundColor(Color.white)
                    Text(Strings.MusicPlayerAllScreen.remainingTime)
                        .font(.footnote)
                        .foregroundColor(Color.white)
                }
                
            }
        }
    }
}

