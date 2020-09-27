//
//  CarRegistModel.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/27.
//

import UIKit

class CarRegistModelVC: UIViewController {

    @IBOutlet weak var modelWrap: UIView!
    @IBOutlet weak var modelImageWrap: UIView!
    
    
    var carRegistModelCell : CarRegistModelCell?
    
    @IBOutlet weak var modelOptionCV: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
        
        self.modelOptionCV.register(UINib(nibName: "CarRegistModelCell", bundle: nil), forCellWithReuseIdentifier: "CarRegistModelCell")
        

    }
    
    func uiInit() {
        modelOptionCV.delegate = self
        modelOptionCV.dataSource = self
        modelOptionCV.backgroundColor = .clear
        
        modelImageWrap.layer.borderWidth = 1.0
        modelImageWrap.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        
        modelWrap.layer.cornerRadius = 15.0
        
        modelWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        modelWrap.layer.shadowOpacity = 0.1

        modelWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
        modelWrap.layer.shadowRadius = 10
    }
}
