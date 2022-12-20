//
//  SearchModel.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import Foundation

struct SearchScreenModel {
   var name: String
   var image: String
}

extension SearchScreenModel {
    static let searchModels: [SearchScreenModel] = [
        SearchScreenModel(name: "Поп на русском", image: "10"),
        SearchScreenModel(name: "Новый год", image: "4"),
        SearchScreenModel(name: "Главное", image: "5"),
        SearchScreenModel(name: "Спокойствие", image: "6"),
        SearchScreenModel(name: "Для детей", image: "7"),
        SearchScreenModel(name: "Спорт", image: "8"),
        SearchScreenModel(name: "Чарты", image: "9"),
        SearchScreenModel(name: "Сон", image: "10"),
        SearchScreenModel(name: "Хиты", image: "11"),
        SearchScreenModel(name: "2010-е", image: "12")
    ]
}
