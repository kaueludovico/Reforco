//
//  ScheduleCollectionViewCell.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class ScheduleCollectionViewCell: BaseCell {
    
    var id: String? {
        didSet {
            idLabel.text = id
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    lazy var idLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()

    override func addSubview() {
        
        addSubview(container)
        container.addSubview(idLabel)
    }
    
    override func setConstraint() {
        container.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 0),
            size: .init(width: bounds.size.width, height: 80))
        
        idLabel.anchor(
            top: container.topAnchor,
            leading: container.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 20, bottom: 0, right: 0),
            size: .init(width: 10, height: 30))
    }
}
