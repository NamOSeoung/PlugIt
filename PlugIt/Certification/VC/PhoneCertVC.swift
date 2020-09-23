//
//  PhoneCertVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit

class PhoneCertVC: UIViewController {

    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var numberWrap1: UIView!
    @IBOutlet weak var numberWrap2: UIView!
    @IBOutlet weak var numberWrap3: UIView!
    @IBOutlet weak var numberWrap4: UIView!
    @IBOutlet weak var numberWrap5: UIView!
    @IBOutlet weak var numberWrap6: UIView!
    @IBOutlet weak var nextStepBtn: UIButton!
//    @IBOutlet weak var delBtn: UIButton!
//    @IBOutlet weak var nameGL: UILabel!
//    @IBOutlet weak var nextBtnWrap: UIView!
//    @IBOutlet weak var emailGL: UILabel!
//    
//    @IBOutlet weak var phoneGL: UILabel!
//    @IBOutlet weak var phoneTF: UITextField!
//    
//    var nextBtnHeight:CGFloat = 47.0
//    var nameAnimationWrapHeight:CGFloat = 207.0
//    var name:String = ""
//    var email:String = ""
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
//        self.keyboardInit()
//        self.delegateInit()
    }
    
    func uiInit() {
        nextStepBtn.layer.cornerRadius = 15.0
        numberWrap1.layer.cornerRadius = 10.0
        numberWrap2.layer.cornerRadius = 10.0
        numberWrap3.layer.cornerRadius = 10.0
        numberWrap4.layer.cornerRadius = 10.0
        numberWrap5.layer.cornerRadius = 10.0
        numberWrap6.layer.cornerRadius = 10.0 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.progressBar.constraints[0].constant =  (deviceWidth/10) * 8.0
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
//
//    override func viewWillAppear(_ animated: Bool) {
//        self.nameAnimationWrap.constraints[0].constant = self.nameAnimationWrapHeight + 70.0 + 60.0
//        self.progressBar.constraints[0].constant =  (deviceWidth/10) * 6.5
//        UIView.animate(withDuration: 0.2) {
//            self.view.layoutIfNeeded()
//        }
//    }
//
//    func keyboardInit() {
//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(keyboardWillShowing),
//            name: UIResponder.keyboardWillShowNotification,
//            object: nil
//        )
//
//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(keyboardWillHide),
//            name: UIResponder.keyboardWillHideNotification,
//            object: nil
//        )
//    }
//
//    //키보드 높이 찾아주는 부분
//    @objc func keyboardWillShowing(notification:NSNotification){
//        let userInfo:NSDictionary = notification.userInfo! as NSDictionary;
//        let keyboardFrame:NSValue = userInfo.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue
//        let keyboardRectangle = keyboardFrame.cgRectValue;
//        let keyboardHeight = keyboardRectangle.size.height;
//        self.nextStepBtn.isHidden = true
//        self.nextBtnWrap.isHidden = false
//        self.nextBtnWrap.constraints.forEach { (constraint) in // ---- 3
//            if constraint.firstAttribute == .height {
//                constraint.constant = self.nextBtnHeight + keyboardHeight - 35.0
//            }
//        }
//    }
//
//      //키보드 숨겨질 때 이벤트
//    @objc private func keyboardWillHide(_ notification: Notification) {
//        self.nextStepBtn.isHidden = false
//        self.nextBtnWrap.isHidden = true
//
//        nextBtnWrap.constraints.forEach { (constraint) in // ---- 3
//            if constraint.firstAttribute == .height {
//                  constraint.constant = nextBtnHeight
//            }
//        }
//    }
//
    //입력 텍스트 밖 영역 클릭시 키보드 내려가도록 해주는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func nextStepBtn(_ sender: Any) {
        let authorityVC = signUpStoryBoard.instantiateViewController(withIdentifier: "AuthorityVC") as! AuthorityVC
      
        self.present(authorityVC, animated: true, completion: nil)
    }
    //
//    @IBAction func nextStepBtn(_ sender: Any) {
//        print("nextBtnClick")
//    }
//
//    @IBAction func delBtn(_ sender: Any) {
//        self.phoneTF.text = ""
//        self.phoneTFInit()
//    }
//
//    func phoneTFInit() {
//        if self.phoneTF.text!.count > 0 {
//            phoneWrap.animateBorderWidth(boderWidth: 1.5, duration: 0.125, boderColor: UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1).cgColor)
//            phoneGL.isHidden = true
//            delBtn.constraints[1].constant = 23.0
//            delBtn.isHidden = false
//        }else {
//            phoneWrap.animateBorderWidth(boderWidth: 0.0, duration: 0.125, boderColor: UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1).cgColor)
//            phoneWrap.layer.borderWidth = 0.0
//            phoneGL.isHidden = false
//            delBtn.constraints[1].constant = 0.0
//            delBtn.isHidden = true
//        }
//    }
}

