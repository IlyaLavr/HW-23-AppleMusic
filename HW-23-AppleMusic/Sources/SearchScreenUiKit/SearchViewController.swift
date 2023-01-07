//
//  SearchViewController.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 07.01.2023.
//

import UIKit
import SnapKit


class SearchViewController: UIViewController {
    
    var models = SearchScreenModel.searchModels

    // MARK: - Elements

    private lazy var searchBar: UISearchController = {
            let search = UISearchController()
            search.searchBar.placeholder = "Search"
//            search.searchBar.delegate = self
            return search
        }()

    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        return collectionView
    }()

        // MARK: - Lyfecycle

        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Поиск"
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationItem.searchController = searchBar
            navigationItem.hidesSearchBarWhenScrolling = false
            setupHierarhy()
            setupLayout()
        }

    // MARK: - Setup

    private func setupHierarhy() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {
        collectionView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalTo(view)
        }
    }

    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            switch sectionIndex {
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9),
                                                      heightDimension: .fractionalHeight(1))
                
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 7,
                                                                   bottom: 7,
                                                                   trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2),
                                                       heightDimension: .estimated(800))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize,
                                                                   subitem: layoutItem,
                                                                   count: self.models.count / 2)
                
                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 5,
                                                                      leading: 5,
                                                                      bottom: 40,
                                                                      trailing: 15)
                layoutSection.orthogonalScrollingBehavior = .continuous
                
                
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.06),
//                                                                     heightDimension: .estimated(40))
//
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
//                    layoutSize: layoutSectionHeaderSize,
//                    elementKind: UICollectionView.elementKindSectionHeader,
//                    alignment: .top)
//                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0)
//
//                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                return layoutSection

            default:
                let itemSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1)
                )

                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                   leading: 5,
                                                                   bottom: 0,
                                                                   trailing: 5)

                let groupSize = NSCollectionLayoutSize(
                    widthDimension: .fractionalWidth(1.1),
                    heightDimension: .estimated(500)
                )
                let layoutGroup = NSCollectionLayoutGroup.vertical(
                    layoutSize: groupSize,
                    subitems: [layoutItem]
                )

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.orthogonalScrollingBehavior = .groupPagingCentered
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                      leading: 0,
                                                                      bottom: 20,
                                                                      trailing: 0)
//                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.06),
//                                                                     heightDimension: .estimated(40))
//
//                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
//                    layoutSize: layoutSectionHeaderSize,
//                    elementKind: UICollectionView.elementKindSectionHeader,
//                    alignment: .top)
//                layoutSectionHeader.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 10, trailing: 0)
//                layoutSection.boundarySupplementaryItems = [layoutSectionHeader]
                return layoutSection
            }
        }
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        models.count
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
//        return 2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.image.image = UIImage(named: models[indexPath.item].image)
        cell.nameItem.text = models[indexPath.item].name
//        cell.configuration(model: model)
        return cell
    }

//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CollectionReusableView.cellHeaderIdentifier, for: indexPath) as? CollectionReusableView else {
//            return UICollectionReusableView()
//        }
//        switch indexPath.section {
//        case 0:
//            header.configuration(headerLeftTitle: "Мои альбомы", headerRightTitle: "Все")
//        case 1:
//            header.configuration(headerLeftTitle: "Общие альбомы", headerRightTitle: "Все")
//        case 2:
//            header.configuration(headerLeftTitle: "Люди и места", headerRightTitle: nil)
//        case 3:
//            header.configuration(headerLeftTitle: "Типы медиафайлов", headerRightTitle: nil)
//        default:
//            header.configuration(headerLeftTitle: "Title", headerRightTitle: "title")
//        }
//        return header
//    }
}
