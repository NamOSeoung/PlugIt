//
//  CarRegistColorVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/26.
//

import UIKit

class CarRegistColorVC: UIViewController {

    //colorTableView
    @IBOutlet weak var colorTV: UITableView!
    
    @IBOutlet weak var modelWrap: UIView!
    @IBOutlet weak var modelImage: UIView!
    
    var carRegistColorCell : CarRegistColorCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
    }
    
    func uiInit() {
        colorTV.delegate = self
        colorTV.dataSource = self
        colorTV.backgroundColor = .white
        
        modelImage.layer.borderWidth = 1.0
        modelImage.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        
        modelWrap.layer.cornerRadius = 15.0
        
        modelWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        modelWrap.layer.shadowOpacity = 0.1

        modelWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
        modelWrap.layer.shadowRadius = 10
    }
}
