//
//  SignUpNameTF.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit

@available(iOS 13.0, *)
extension SignUpNameVC: UITextFieldDelegate {
    
    //휴대폰 번호 작성 시 이벤트
    @objc func textFieldDidChange(textField: UITextField) {
        self.nameTFInit()
    }
}

