//
//  RootCell.swift
//  Swag
//
//  Created by Matt Deuschle on 7/15/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class RootTableCell: UITableViewCell {

    @IBOutlet private weak var collectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width - 60, height: CGFloat(260))
    }
}

extension RootTableCell: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
}

extension RootTableCell: UIScrollViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

extension RootTableCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "rootCollectionCell", for: indexPath) as? RootCollectionCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = .orange
        return cell
    }
}







