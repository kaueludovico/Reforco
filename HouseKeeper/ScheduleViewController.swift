//
//  ScheduleViewController.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    var customView = ScheduleScreenView()
    var id: String?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.listButton.addTarget(self, action: #selector(navigationToListSchedule), for: .touchUpInside)
    }
    
    func receiveId(id: Int) {
        customView.id = "\(id)"
        self.id = "\(id)"
    }
    
    @objc func navigationToListSchedule() {
        var scheduleCollectionViewController = ScheduleCollectionViewController()
        
        if let idService = self.id {
            scheduleCollectionViewController.getDataSchedule(data: idService)
        }
        self.navigationController?.pushViewController(scheduleCollectionViewController, animated: true)
    }
}
