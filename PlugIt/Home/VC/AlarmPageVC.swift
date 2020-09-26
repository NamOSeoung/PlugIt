//
//  AlarmPageVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit

class AlarmPageVC: UIViewController {

    //alarmListTableView
    @IBOutlet weak var alarmListTV: UITableView!
    
    var alarmCell : AlarmCell?
    
    @IBOutlet weak var dragBar: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
    }
    
    func uiInit() {
        
        self.view.layer.cornerRadius = 20.0
        alarmListTV.delegate = self
        alarmListTV.dataSource = self
        alarmListTV.backgroundColor = .white
        dragBar.layer.cornerRadius = 2.5
    }
    @IBAction func clostBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

