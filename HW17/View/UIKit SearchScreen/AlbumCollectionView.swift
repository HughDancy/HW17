//
//  AlbumCollectionView.swift
//  HW17
//
//  Created by Борис Киселев on 19.09.2022.
//

import Foundation
import UIKit

class AlbumCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var albums = [Album]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 45
        layout.sectionInset = UIEdgeInsets(top: 5, left: 3, bottom: 5, right: 3)
        super.init(frame: .zero, collectionViewLayout: layout)
        delegate = self
        dataSource = self
        register(SearchCell.self, forCellWithReuseIdentifier: SearchCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return someAlbums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: SearchCell.identifier, for: indexPath) as? SearchCell else {
            return UICollectionViewCell()
        }
        cell.image.image = UIImage(named: someAlbums[indexPath.row].image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165 , height: 155)
    }
}
