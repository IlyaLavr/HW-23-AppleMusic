//
//  ListView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var editMode: EditMode = .active

    var body: some View {
        VStack {
                List {
                    ForEach(ListModel.listCategory, id:\.self) {
                        ListCell(model: $0)
                            .listRowSeparator(.visible)
                    }
                    .onMove(perform: move)
                }
//                .environment(\.editMode, $editMode)
                .listStyle(.grouped)
                .padding(.leading, 0)
                
            MusicPlayerView()
        }
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        ListModel.listCategory.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

