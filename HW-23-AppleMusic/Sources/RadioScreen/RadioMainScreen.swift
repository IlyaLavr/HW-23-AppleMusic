//
//  RadioMainScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct RadioMainScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RadioBigSections()
                Divider()
                    .padding([.leading,.trailing])
                HStack {
                    RadioSmallSections()
                }
                .navigationTitle(Strings.NavigationTitles.radioScreenTitles)
            }
        }
    }
}
struct RadioMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        RadioMainScreen()
    }
}

