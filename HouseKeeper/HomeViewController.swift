//
//  HomeViewController.swift
//  HouseKeeper
//
//  Created by Kaue Ludovico on 04/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var customView = HomeScreenView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonAction()
    }
    
    func setButtonAction() {
        customView.easyButton.addTarget(self, action: #selector(navigationEasyToSchedule), for: .touchUpInside)
        customView.mediumButton.addTarget(self, action: #selector(navigationMediumToSchedule), for: .touchUpInside)
        customView.hardButton.addTarget(self, action: #selector(navigationHardToSchedule), for: .touchUpInside)
    }

    @objc func navigationEasyToSchedule() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.receiveId(id: 1)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
    
    @objc func navigationMediumToSchedule() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.receiveId(id: 2)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
    
    @objc func navigationHardToSchedule() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.receiveId(id: 3)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
}
