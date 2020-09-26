//
//  SignUpCompleteVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit

class SignUpCompleteVC: UIViewController {

    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var carRegisterBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiInit()
    }
    
    func uiInit() {
        carRegisterBtn.layer.cornerRadius = 15.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.progressBar.constraints[0].constant =  (deviceWidth)
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    //메인화면으로 돌아가기
    @IBAction func backToMainBtn(_ sender: Any) {
    }
    //차량등록하기
    @IBAction func carRegisterBtn(_ sender: Any) {
        let homeVC = homeStoryBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
      
        self.present(homeVC, animated: true, completion: nil)
    }
}

