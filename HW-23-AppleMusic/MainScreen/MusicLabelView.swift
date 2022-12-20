//
//  MusicLabelView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct MusicLabelView: View {
    var body: some View {
        VStack {
            Text("Ищете свою муыку?")
                .bold()
                .font(.system(size: 22))
            Text("Здесь появится купленная вами в ITunes Store музфка")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
}

struct MusicLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MusicLabelView()
    }
}
