//
//  RadioModel.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

struct RadioScreenModel {
    var name: String
    var title: String
    var text: String?
    var image: String
}

extension RadioScreenModel {
    static let bigSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Легкий поп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "3"),
        RadioScreenModel(name: "Хиты", title: "Избранная радиостанция", text: "Станция Apple Music", image: "5"),
        RadioScreenModel(name: "Хип-Хоп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "10"),
        RadioScreenModel(name: "Поп-музыка", title: "Избранная радиостанция", text: "Станция Apple Music", image: "4"),
        RadioScreenModel(name: "Классика Рока", title: "Избранная радиостанция", text: "Станция Apple Music", image: "7"),
        RadioScreenModel(name: "Смус-джаз", title: "Избранная радиостанция", text: "Станция Apple Music", image: "5")
    ]
    
    static let smallSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "One mix", title: "Поп", text: "Разные артисты", image: "7"),
        RadioScreenModel(name: "GAGA Radio", title: "Хард-рок", text: "Lady Gaga", image: "8"),
        RadioScreenModel(name: "Fatboy Slim Radio", title: "Apple Music", text: "Fatboy Slim", image: "9"),
        RadioScreenModel(name: "Medicine At Midnight", title: "Хип-Хоп", text: "Run GO", image: "10"),
        RadioScreenModel(name: "OWSLA Radio", title: "Альтернатива", text: "Skrillex", image: "11"),
        RadioScreenModel(name: "Young Money", title: "Электроника", text: "Lil Wayne", image: "4")
    ]
    
}

