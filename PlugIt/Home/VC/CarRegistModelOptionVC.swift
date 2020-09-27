//
//  CarRegistModelVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/26.
//

import UIKit

class CarRegistModelOptionVC:
    UIViewController {

    @IBOutlet weak var completeBtn: UIButton!
    
    @IBOutlet weak var modelImageWrap: UIView!

    @IBOutlet weak var optionOneWrap_1: UIView!
    @IBOutlet weak var optionOneWrap_2: UIView!
    @IBOutlet weak var optionOneWrap_3: UIView!
    
    @IBOutlet weak var optionTwoWrap_1: UIView!
    
    @IBOutlet weak var optionTwoWrap_2: UIView!
    
    @IBOutlet weak var optionOneTV: UITableView!
    @IBOutlet weak var optionTwoTV: UITableView!
    
    @IBOutlet weak var scrollViewContainerViewWidth: NSLayoutConstraint!
    @IBOutlet weak var optionOneSelectBoxWrap: UIView!
    @IBOutlet weak var optionTwoSelectBoxWrap: UIView!
    
    var optionOneWrapExtendFlag:Bool = false
    
    
    var carOptionOneCell : CarOptionOneCell?
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollViewContainerViewWidth.constant = UIScreen.main.bounds.size.width * 3
        completeBtn.layer.cornerRadius = 15.0
        modelImageWrap.layer.cornerRadius = 15.0
        optionOneWrap_1.layer.cornerRadius = 15.0
        optionOneWrap_2.layer.cornerRadius = 15.0
        optionOneWrap_3.layer.cornerRadius = 15.0
        optionTwoWrap_1.layer.cornerRadius = 15.0
        optionTwoWrap_2.layer.cornerRadius = 15.0
       
        optionOneSelectBoxWrap.layer.cornerRadius = 15.0
        optionTwoSelectBoxWrap.layer.cornerRadius = 15.0
        optionOneTV.layer.cornerRadius = 15.0
        optionTwoTV.layer.cornerRadius = 15.0
        
        optionOneWrap_1.layer.borderWidth = 1.0
        optionOneWrap_1.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        optionOneWrap_2.layer.borderWidth = 1.0
        optionOneWrap_2.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        
        optionOneWrap_3.layer.borderWidth = 1.0
        optionOneWrap_3.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        optionTwoWrap_1.layer.borderWidth = 1.0
        optionTwoWrap_1.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        optionTwoWrap_2.layer.borderWidth = 1.0
        optionTwoWrap_2.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
        
        optionOneTV.delegate = self
        optionOneTV.dataSource = self
        optionOneTV.backgroundColor = .white
        optionTwoTV.backgroundColor = .white
        optionOneSelectBoxWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        optionTwoSelectBoxWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        optionOneSelectBoxWrap.layer.shadowOpacity = 0.1
        optionOneSelectBoxWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
        optionOneSelectBoxWrap.layer.shadowRadius = 10
        optionTwoSelectBoxWrap.layer.shadowOpacity = 0.1
        optionTwoSelectBoxWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
        optionTwoSelectBoxWrap.layer.shadowRadius = 10
        
        self.optionOneSelectBoxWrap.constraints[0].constant = 0.0
        
    }
    
    @IBAction func completeBtn(_ sender: Any) {
//        let carRegistModelOptionVC2 = carRegistStoryBoard.instantiateViewController(withIdentifier: "CarRegistModelOptionVC2") as! CarRegistModelOptionVC2
//        self.present(carRegistModelOptionVC2, animated: false, completion: nil)
        
        
        self.optionOneSelectBoxWrap.constraints[0].constant =  (110.0)
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
//            self.optionOneSelectBoxWrap.isHidden = true
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
//    func uiInit() {
////        modelOptionCV.delegate = self
////        modelOptionCV.dataSource = self
//        modelOptionCV.backgroundColor = .clear
//        
//        modelImageWrap.layer.borderWidth = 1.0
//        modelImageWrap.layer.borderColor = UIColor(red: 245/255, green:245/255, blue: 245/255, alpha: 1).cgColor
//        
//        modelWrap.layer.cornerRadius = 15.0
//        
//        modelWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
//        modelWrap.layer.shadowOpacity = 0.1
//
//        modelWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
//        modelWrap.layer.shadowRadius = 10
//    }
    @IBAction func optionOneBtn(_ sender: Any) {
        if optionOneWrapExtendFlag {
            self.optionOneSelectBoxWrap.constraints[0].constant = 0.0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }else {
            self.optionOneSelectBoxWrap.constraints[0].constant = 110.0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        
        optionOneWrapExtendFlag = !optionOneWrapExtendFlag
    }
}
