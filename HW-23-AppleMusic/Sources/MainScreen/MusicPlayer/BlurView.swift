//
//  BlurView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 26.12.2022.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))
    }
}
