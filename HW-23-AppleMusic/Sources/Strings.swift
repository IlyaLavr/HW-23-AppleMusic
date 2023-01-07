//
//  Strings.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 21.12.2022.
//

import Foundation

enum Strings {
    enum Tabbar {
        static let tabBarItemLeft = "square.stack.fill"
        static let tabBarItemMiddle = "dot.radiowaves.left.and.right"
        static let tabBarItemRigth = "magnifyingglass"
        
        static let tabBarLeftName = "Медиатека"
        static let tabBarMiddleName = "Радио"
        static let tabBarRigthName = "Поиск"
        static let tabBarUiKitSearch = "Поиск UiKit"
    }
    
    enum MusicLabel {
        static let topText = "Ищете свою музыку?"
        static let bottomText = "Здесь появится купленная вами в ITunes Store музыка"
    }
    
    enum MusicPlayer{
        static let currentImageTrack = "play.square.fill"
        static let currentNameTrack = "Céline Dion"
        static let playButton = "play.fill"
        static let nextTrackButton = "forward.fill"
    }
    
    enum ListCell {
        static let image = "circle"
        static let selectedImage = "checkmark.circle.fill"
    }
    
    enum RadioSmallSections {
        static let firstSectionText = "Шоу артистов"
        static let secondSectionText = "Вы недавно слушали"
        static let thirdSectionText = "Популярные артисты"
    }
    
    enum NavigationTitles {
        static let radioScreenTitles = "Radio"
        static let searchScreenTitles = "Поиск"
        static let mediatekaScreenTitles = "Медиатека"
    }
    
    enum MusicPlayerAllScreen {
        static let photoSinger = "20"
        static let nameComposition = "My Heart Will Go On"
        static let infoAboutTrack = "ellipsis.circle.fill"
        
        static let passedTime = "00:00"
        static let remainingTime = "-03:48"
        
        static let backTrack = "backward.fill"
        static let nextTrack = "forward.fill"
        
        static let leftIconVolume = "speaker.fill"
        static let rightIconVolume = "speaker.wave.2.fill"
    }
    
    enum Headers {
        static let headerSearch = "Поиск по категориям"
    }
}
