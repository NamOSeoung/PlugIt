//
//  PasswordSettingVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit

class PasswordSettingVC: UIViewController {

    @IBOutlet weak var progressBar: UIView!

    @IBOutlet weak var keypadWrap: UIView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var cancelBtn: UIButton!
    
    @IBOutlet weak var deleteBtn: UIButton!
    
    var passwordArr:Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
    }
    
    func uiInit() {
        
        keypadWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        keypadWrap.layer.shadowOpacity = 0.03

        keypadWrap.layer.shadowOffset = CGSize(width: 0, height: -7)
        keypadWrap.layer.shadowRadius = 4
        
        button0.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button1.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button2.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button3.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button4.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button5.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button6.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button7.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button8.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        button9.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        cancelBtn.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
        deleteBtn.setBackgroundColor(UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1), for: .highlighted)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.progressBar.constraints[1].constant =  (deviceWidth/10) * 9.0
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func customKeypadBtn(_ sender: UIButton) {
    
        if sender.tag == 88 {
            //취소
        }else if sender.tag == 99 {
            //지우기
            passwordArr.popLast()
        }else { //숫자

            if passwordArr.count < 4 {
                passwordArr.append("\(sender.tag)")
                if passwordArr.count == 4 {
                    let signUpCompleteVC = signUpStoryBoard.instantiateViewController(withIdentifier: "SignUpCompleteVC") as! SignUpCompleteVC
                  
                    self.present(signUpCompleteVC, animated: true, completion: nil)
                }
            }
        }
    }
}

