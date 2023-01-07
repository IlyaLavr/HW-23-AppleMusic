//
//  CollectionReusableView.swift
//  HW-23-AppleMusic
//
//  Created by Илья on 07.01.2023.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
    static let identifier = "SearchHeader"
        
        // MARK: - Elements
        
        lazy var header: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
            label.textAlignment = .left
            return label
        }()
        
        // MARK: - init
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupHierarchy()
            setupLayout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        // MARK: - Setup
        
        private func setupHierarchy() {
            addSubview(header)
        }
        
        private func setupLayout() {
            header.snp.makeConstraints { make in
                make.left.equalTo(self)
                make.bottom.equalTo(self).offset(-10)
            }
        }
        
        override func prepareForReuse() {
            super.prepareForReuse()
            header.text = nil
        }
}
