//
//  SearchScreen.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import SwiftUI

struct SearchScreen: View {
    var models = SearchScreenModel.searchModels
    @State private var searchText = ""
    @State private var searchScreen = SearchScreenModel.searchModels
    @State var isAlertPresented = false
    
    var columns = [
        GridItem(.fixed(200), spacing: 2),
        GridItem(.fixed(200))
    ]
    
    var searchResults: [SearchScreenModel] {
        if searchText.isEmpty {
            return searchScreen
        } else {
            return searchScreen.filter {
                $0.name
                .localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            LazyVGrid(columns: columns) {
                ForEach(searchResults, id: \.name) { model in
                    ZStack(alignment: .bottomLeading) {
                        NavigationLink (destination: DetailScreen()
                            .navigationTitle("\(model.name)")
                        ) {
                            Image(model.image)
                            .frame(width: 180, height: 150)
                            .cornerRadius(25)
                        }
                        
                        Text(model.name)
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 20, leading: 8, bottom: 15, trailing: 0))
                    }
                }
            }
            .navigationTitle(Strings.NavigationTitles.searchScreenTitles)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
//        .padding(.bottom, 80)
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
