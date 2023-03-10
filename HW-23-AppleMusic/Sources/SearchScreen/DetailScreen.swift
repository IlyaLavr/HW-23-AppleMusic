//
//  DetailScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 06.01.2023.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {
        ScrollView {
            RadioBigSections()
            HStack {
                RadioSmallSections()
            }
        }
        .padding(.bottom, 90)
    }
}
