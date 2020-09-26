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
    
    override func viewDidAppear(_ animated: Bool) {
        let signUpTermsBS = bottomSheetStoryBoard.instantiateViewController(withIdentifier: "SignUpTermsBS") as! SignUpTermsBS

        signUpTermsBS.height = 387.0
        signUpTermsBS.topCornerRadius = 20.0
        signUpTermsBS.presentDuration = 0.325
        signUpTermsBS.dismissDuration = 0.325
        present(signUpTermsBS, animated: true, completion: nil)
    }
    
    @IBAction func nextStepBtn(_ sender: Any) {
        let signUpTermsBS = bottomSheetStoryBoard.instantiateViewController(withIdentifier: "SignUpTermsBS") as! SignUpTermsBS

        signUpTermsBS.height = 387.0
        signUpTermsBS.topCornerRadius = 20.0
        signUpTermsBS.presentDuration = 0.325
        signUpTermsBS.dismissDuration = 0.325
        present(signUpTermsBS, animated: true, completion: nil)
    }
    
}
