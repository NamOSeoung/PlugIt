//
//  SignUpVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//
import UIKit

class SignUpNameVC: UIViewController {

    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var nameWrap: UIView!
    @IBOutlet weak var nextStepBtn: UIButton!
    @IBOutlet weak var delBtn: UIButton!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var nameGL: UILabel!
    @IBOutlet weak var nextBtnWrap: UIView!
    var nextBtnHeight:CGFloat = 47.0
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.uiInit()
        self.keyboardInit()
        self.delegateInit()
        
        
    }
    
    func uiInit() {
        nameWrap.layer.cornerRadius = 15.0
        nextStepBtn.layer.cornerRadius = 15.0
        
        delBtn.isHidden = true
        self.nameTF.becomeFirstResponder()
    }
    
    
    func delegateInit() {
        self.nameTF.delegate = self
        //텍스트 필드 입력 시 이벤트 발생
        nameTF.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
    }
    
    func keyboardInit() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShowing),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    //키보드 높이 찾아주는 부분
    @objc func keyboardWillShowing(notification:NSNotification){
        let userInfo:NSDictionary = notification.userInfo! as NSDictionary;
        let keyboardFrame:NSValue = userInfo.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue
        let keyboardRectangle = keyboardFrame.cgRectValue;
        let keyboardHeight = keyboardRectangle.size.height;
        self.nextStepBtn.isHidden = true
        self.nextBtnWrap.isHidden = false
        self.nextBtnWrap.constraints.forEach { (constraint) in // ---- 3
            if constraint.firstAttribute == .height {
                constraint.constant = self.nextBtnHeight + keyboardHeight - 35.0
            }
        }
    }
      
      //키보드 숨겨질 때 이벤트
    @objc private func keyboardWillHide(_ notification: Notification) {
        self.nextStepBtn.isHidden = false
        self.nextBtnWrap.isHidden = true
        
        nextBtnWrap.constraints.forEach { (constraint) in // ---- 3
            if constraint.firstAttribute == .height {
                  constraint.constant = nextBtnHeight
            }
        }
    }
    
    //입력 텍스트 밖 영역 클릭시 키보드 내려가도록 해주는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func nextStepBtn(_ sender: Any) {
        if self.nameTF.text!.count > 1 {
            let signUpEmailVC = signUpStoryBoard.instantiateViewController(withIdentifier: "SignUpEmailVC") as! SignUpEmailVC
            signUpEmailVC.name = self.nameTF.text!
            self.present(signUpEmailVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func delBtn(_ sender: Any) {
        self.nameTF.text = ""
        self.nameTFInit()
    }
    
    func nameTFInit() {
        if self.nameTF.text!.count > 0 {
            nameWrap.animateBorderWidth(boderWidth: 1.5, duration: 0.125, boderColor: UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1).cgColor)
            nameGL.isHidden = true
            delBtn.constraints[1].constant = 23.0
            delBtn.isHidden = false
        }else {
            nameWrap.animateBorderWidth(boderWidth: 0.0, duration: 0.125, boderColor: UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1).cgColor)
            nameWrap.layer.borderWidth = 0.0
            nameGL.isHidden = false
            delBtn.constraints[1].constant = 0.0
            delBtn.isHidden = true
        }
    }
}

