//
//  HomeVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var carEmptyWrap: UIView!
    
    @IBOutlet weak var noticeWrap: UIView!
    @IBOutlet weak var batteryWrap: UIView!
    @IBOutlet weak var timeSavingWrap: UIView!
    @IBOutlet weak var alarmWrap: UIView!
    
    @IBOutlet weak var gaugeWrap: UIView!
    
    @IBOutlet weak var chargeCallWRap: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
    }
    
    func uiInit() {
        alarmWrap.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(alarmListMove)))
        
        carEmptyWrap.layer.cornerRadius = 25.0
        carEmptyWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        carEmptyWrap.layer.shadowOpacity = 0.16

        carEmptyWrap.layer.shadowOffset = CGSize(width: 2, height: 3)
        carEmptyWrap.layer.shadowRadius = 15
        
        batteryWrap.layer.cornerRadius = 20.0
        timeSavingWrap.layer.cornerRadius = 20.0
        noticeWrap.layer.cornerRadius = 20.0
        gaugeWrap.layer.cornerRadius = 20.0
        chargeCallWRap.layer.cornerRadius = 20.0
        
        
    }
    
    @objc func alarmListMove() {
        let alarmPageVC = homeStoryBoard.instantiateViewController(withIdentifier: "AlarmPageVC") as! AlarmPageVC
      
        self.present(alarmPageVC, animated: true, completion: nil)
    }
}

