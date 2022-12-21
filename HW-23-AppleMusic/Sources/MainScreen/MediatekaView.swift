//
//  MediatekaView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct MediatekaView: View {
    @State private var editMode: EditMode = .active
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                if !isPresented {
                    MusicLabelView()
                    Spacer()
                    MusicPlayerView()
                } else {
                    ZStack {
                        ListView()
                            .environment(\.editMode, $editMode)
                            .frame(alignment: .top)
                            .padding(.top, -280)
                    }
                    .background(Color.white)
                }
            }
            .navigationTitle(Strings.NavigationTitles.mediatekaScreenTitles)
            .padding(EdgeInsets(top: 280, leading: 0, bottom: 0, trailing: 0))
            .navigationBarItems(
                trailing: HStack {
                    Button(isPresented ? "Готово" : "Править") {
                        isPresented.toggle()
                    }
                    .foregroundColor(.red)
                })
        }
    }
}

struct MediatekaView_Previews: PreviewProvider {
    static var previews: some View {
        MediatekaView()
    }
}
