//
//  SearchView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 07.01.2023.
//

import SwiftUI
import UIKit

struct UIKitSearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
