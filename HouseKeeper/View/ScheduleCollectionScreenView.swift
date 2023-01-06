//
//  ScheduleCollectionScreenView.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class ScheduleCollectionScreenView: BaseView {
    
    let layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        return layout
    }()
//
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: bounds,
            collectionViewLayout: UICollectionViewFlowLayout())
        backgroundColor = .red
        return collectionView
    }()
    
    override func addSubviews() {
        collectionView.frame = self.bounds
    }
}
