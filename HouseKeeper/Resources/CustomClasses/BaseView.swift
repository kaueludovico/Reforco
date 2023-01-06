//
//  BaseView.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
    }
    
    func setConstraints() {
        
    }
}
