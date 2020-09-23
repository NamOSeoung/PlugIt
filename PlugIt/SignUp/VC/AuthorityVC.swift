//
//  AuthorityVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit

class AuthorityVC: UIViewController {

    @IBOutlet weak var nextStepBtn: UIButton!
    
    @IBOutlet weak var cameraWrap: UIView!
    
    @IBOutlet weak var albumWrap: UIView!
    
    @IBOutlet weak var alarmWrap: UIView!
    
    @IBOutlet weak var locationWrap: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        cameraWrap.layer.cornerRadius = 15.0
        albumWrap.layer.cornerRadius = 15.0
        alarmWrap.layer.cornerRadius = 15.0
        locationWrap.layer.cornerRadius = 15.0
        nextStepBtn.layer.cornerRadius = 15.0
    }
    
    @IBAction func nextStepBtn(_ sender: Any) {
    }
    
}
