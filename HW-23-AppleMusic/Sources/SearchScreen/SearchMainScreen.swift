//
//  SearchMainScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct SearchMainScreen: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                SearchScreen()
            }
            .padding(.bottom, 90)
        }
    }
}
