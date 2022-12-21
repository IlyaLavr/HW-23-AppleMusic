//
//  ListCell.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct ListCell: View {
    
    var model: ListModel
    @State private var isShowed = false
    
    var body: some View {
        HStack {
            ZStack {
                Button(action: { toggle() },
                       label: {
                    if isShowed {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.red)
                            .background(Color.white)
                            .cornerRadius(20)
                    } else {
                        Image(systemName: "circle")
                        .foregroundColor(.gray)
                    }
                })
            }
            Image(systemName: model.icon)
                .foregroundColor(.pink)
            Text(model.name)
        }
    }
    
    func toggle() {
        isShowed.toggle()
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(model: ListModel.listCategory.first ?? ListModel(icon: "none", name: "none"))
    }
}

