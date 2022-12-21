//
//  RadioModel.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

struct RadioScreenModel {
    var name: String
    var title: String?
    var text: String?
    var image: String
}

extension RadioScreenModel {
    static let bigSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Легкий поп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "3"),
        RadioScreenModel(name: "Хиты", title: "Избранная радиостанция", text: "Станция Apple Music", image: "1"),
        RadioScreenModel(name: "Хип-Хоп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "2"),
        RadioScreenModel(name: "Поп-музыка", title: "Избранная радиостанция", text: "Станция Apple Music", image: "4"),
        RadioScreenModel(name: "Классика Рока", title: "Избранная радиостанция", text: "Станция Apple Music", image: "5"),
        RadioScreenModel(name: "Смус-джаз", title: "Избранная радиостанция", text: "Станция Apple Music", image: "6")
    ]
    
    static let smallSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "One mix", title: "Поп", text: "Разные артисты", image: "7"),
        RadioScreenModel(name: "GAGA Radio", title: "Хард-рок", text: "Lady Gaga", image: "8"),
        RadioScreenModel(name: "Fatboy Slim Radio", text: "Fatboy Slim", image: "9"),
        RadioScreenModel(name: "Medicine At Midnight", text: "Run GO", image: "10"),
        RadioScreenModel(name: "OWSLA Radio", text: "Skrillex", image: "11"),
        RadioScreenModel(name: "RolingStones", text: "Now", image: "12"),
        RadioScreenModel(name: "Nirvana", text: "Happy End", image: "13"),
        RadioScreenModel(name: "Abba", text: "Classik", image: "14"),
        RadioScreenModel(name: "Cropp", text: "Wayne", image: "15")
    ]
    
    static let recentSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Beatles", text: "Разные артисты", image: "17"),
        RadioScreenModel(name: "Miley Cirus", text: "Meat", image: "16"),
        RadioScreenModel(name: "Dawid Bowie", text: "Slim", image: "18"),
        RadioScreenModel(name: "Christmas", text: "Run", image: "19")
    ]
    
    static let poularStantionsSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "1980-е", text: "Популярное", image: "1980"),
        RadioScreenModel(name: "1990-е", text: "Популярное", image: "1990"),
        RadioScreenModel(name: "2000-е", text: "Популярное", image: "2000"),
        RadioScreenModel(name: "2010-е", text: "Популярное", image: "2010"),
        RadioScreenModel(name: "2022", text: "Популярное", image: "2022")
    ]
}

