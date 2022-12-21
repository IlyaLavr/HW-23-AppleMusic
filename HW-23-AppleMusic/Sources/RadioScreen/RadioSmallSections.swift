//
//  RadioSmallSections.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct RadioSmallSections: View {
    
    var models = RadioScreenModel.smallSectionModels
    var recentModels = RadioScreenModel.recentSectionModels
    var popularModels = RadioScreenModel.poularStantionsSectionModels
    var columns = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text(Strings.RadioSmallSections.firstSectionText)
                    .font(.title)
                    .bold()
                    .padding(.leading, 20)
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .padding(.top, 6)
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(models, id: \.name) { model in
                        VStack(alignment: .leading) {
                            Image(model.image)
                                .frame(width: 200, height: 150)
                                .cornerRadius(25)
                                .padding(5)
                            
                            Text(model.name)
                                .padding(.leading, 10)
                            Text(model.text ?? "")
                                .padding(.leading, 10)
                        }
                    }
                }
            })
            Text(Strings.RadioSmallSections.secondSectionText)
                .font(.title)
                .bold()
                .padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack {
                    ForEach(recentModels, id: \.name) { model in
                        VStack(alignment: .leading) {
                            Image(model.image)
                                .frame(width: 200, height: 150)
                                .cornerRadius(25)
                                .padding(5)
                            
                            Text(model.name)
                                .padding(.leading, 10)
                            Text(model.text ?? "")
                                .padding(.leading, 10)
                        }
                    }
                }
            })
            
            HStack {
                Text(Strings.RadioSmallSections.thirdSectionText)
                    .font(.title)
                    .bold()
                    .padding(.leading, 15)
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .padding(.top, 6)
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(popularModels, id: \.name) { model in
                        VStack(alignment: .leading) {
                            Image(model.image)
                                .frame(width: 200, height: 150)
                                .cornerRadius(25)
                                .padding(5)
                            
                            Text(model.name)
                                .padding(.leading, 10)
                            
                            Text(model.text ?? "")
                                .padding(.leading, 10)
                        }
                    }
                }
            })
        }
    }
}

struct RadioSmallSections_Previews: PreviewProvider {
    static var previews: some View {
        RadioSmallSections()
    }
}
