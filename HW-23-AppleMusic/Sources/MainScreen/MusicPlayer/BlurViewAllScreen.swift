//
//  BlurViewAllScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct BlurViewAllScreen: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        _ = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
    }
}
