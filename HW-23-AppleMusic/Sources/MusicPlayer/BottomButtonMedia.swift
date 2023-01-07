//
//  BottomButtonMedia.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct BottomButtonMedia: View {
    var body: some View {
        HStack(spacing: 90) {
            Button(action: {}) {
                Image(systemName: "quote.bubble")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            Button(action: {}) {
                Image(systemName: "airplayaudio")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            Button(action: {}) {
                Image(systemName: "list.bullet")
                    .font(.title2)
                    .foregroundColor(.white)
            }
        }
    }
}

