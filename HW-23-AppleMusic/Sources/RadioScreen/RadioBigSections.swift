//
//  RadioBigSections.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct RadioBigSections: View {
    
    var models = RadioScreenModel.bigSectionModels
    
    var columns = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns) {
                ForEach(models, id: \.name) { row in
                    VStack(alignment: .leading){
                        Text(row.title ?? "")
                            .foregroundColor(.gray)
                        Text(row.name)
                            .bold()
                        Text(row.text ?? "")
                        ZStack(alignment: .topLeading) {
                            Image(row.image)
                                .resizable()
                                .frame(width: 350, height: 240)
                                .cornerRadius(10)
                            
                            Text(row.name)
                                .foregroundColor(.white)
                                .bold()
                                .font(.largeTitle)
                                .padding(EdgeInsets(top: 8, leading: 12, bottom: 15, trailing: 12))
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct RadioBigSections_Previews: PreviewProvider {
    static var previews: some View {
        RadioBigSections()
    }
}

