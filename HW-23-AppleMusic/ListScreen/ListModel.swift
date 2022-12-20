//
//  ListModel.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 20.12.2022.
//

import Foundation

struct ListModel: Hashable {
    var icon: String
    var name: String
}

extension ListModel {
    static var listInfo: [ListModel] = [ListModel(icon: "music.note.list", name: "Альбомы"),
                                        ListModel(icon: "music.mic", name: "Артисты"),
                                        ListModel(icon: "square.stack", name: "Плейлисты"),
                                        ListModel(icon: "music.note", name: "Песни"),
                                        ListModel(icon: "tv", name: "Видеоклипы"),
                                        ListModel(icon: "music.note.tv", name: "Телешоу и фильмы"),
                                        ListModel(icon: "guitars", name: "Жанры"),
                                        ListModel(icon: "person.2.crop.square.stack", name: "Сборники"),
                                        ListModel(icon: "music.quarternote.3", name: "Авторы"),
                                        ListModel(icon: "arrow.down.circle", name: "Загружено"),
                                        ListModel(icon: "music.note.house", name: "Домашняя коллекция")]
}
