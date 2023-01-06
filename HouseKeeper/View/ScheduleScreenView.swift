//
//  ScheduleScreenView.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class ScheduleScreenView: BaseView {
    
    var id: String? {
        didSet {
            typeServiceText.text = id
        }
    }
    
    lazy var typeServiceText: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var listButton: UIButton = {
        let button = UIButton()
        button.setTitle("Listar", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 15
        return button
    }()
    
    override func addSubviews() {
        addSubview(typeServiceText)
        addSubview(listButton)
        
    }
    override func setConstraints() {
        typeServiceText.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 20, left: 16, bottom: 0, right: 16),
            size: .init(width: bounds.size.width, height: 40))
        
        listButton.anchor(
            top: typeServiceText.bottomAnchor,
            leading: typeServiceText.leadingAnchor,
            bottom: nil,
            trailing: typeServiceText.trailingAnchor,
            padding: .init(top: 30, left: 100, bottom: 0, right: 100),
            size: .init(width: 163, height: 40))
    }
}


