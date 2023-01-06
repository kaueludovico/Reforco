//
//  ScheduleCollectionView.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit


class ScheduleCollectionViewController: UIViewController {
    
    var customView = ScheduleCollectionScreenView()
    var dataSchedule: String?
    private let cellId = "cellId"
    
//    override func loadView() {
//        view = customView
//    }
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: view.bounds,
            collectionViewLayout: UICollectionViewFlowLayout())
        view.backgroundColor = .red
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }
    
    func setCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ScheduleCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func getDataSchedule(data: String) {
        dataSchedule = data
    }
}

extension ScheduleCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? ScheduleCollectionViewCell
        
        if let item = dataSchedule {
            cell?.id = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width, height: 80)
    }
    
}
