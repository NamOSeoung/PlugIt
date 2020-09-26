//
//  SignUpTermsBS.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit
import BottomPopup
import Photos
import CoreLocation

//우편함 피드 탭 헤더 톱니 누를때 올라오는 바텀시트
@available(iOS 13.0, *)
class SignUpTermsBS: BottomPopupViewController {
    
    var height: CGFloat?
    var topCornerRadius: CGFloat?
    var presentDuration: Double?
    var dismissDuration: Double?
    var shouldDismissInteractivelty: Bool?
    
    @IBOutlet weak var nextStepBtn: UIButton!
    @IBOutlet weak var termsAllAgreeWrap: UIView!
    
    @IBOutlet weak var serviewTermsWrap: UIView!
    
    @IBOutlet weak var userInfoTermsWrap: UIView!
    @IBOutlet weak var markettingTermsWrap: UIView!
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        termsAllAgreeWrap.layer.cornerRadius = 15.0
        serviewTermsWrap.layer.cornerRadius = 15.0
        userInfoTermsWrap.layer.cornerRadius = 15.0
        markettingTermsWrap.layer.cornerRadius = 15.0
        nextStepBtn
            .layer.cornerRadius = 15.0
        
        //        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(aaa)))
    }
    
    @objc func aaa() {
        print("dasdasdas")
    }
    
    //다음으로
    @IBAction func nextStepBtn(_ sender: Any) {
        locationInfoAuthorityCheck()
    }
    
    func locationInfoAuthorityCheck() {
        
//        locationManager.requestWhenInUseAuthorization({ (granted) in
//            if (granted == PHAuthorizationStatus.authorized) { //접근 허용
//                DispatchQueue.main.async {
//
//                }
//            }
//        })
        
        let status = CLLocationManager.authorizationStatus()

        /*  notDetermined = 사용자가 아직 아무결정도 하지 않은 상태
            restricted = 위치정보를 사용할 수 있는 권한이 없는 상태
            denied = 사용자가 권한을 명시적으로 거부했거나 설정에서 위치 서비스가 비활성화되어 있는 상태,
                    위치접근 허용 : 안함
            authorizedAlways = 사용자가 언제든지 자신의 위치를 사용할 수 있는 권한이 있는 상태,
                    위치접근 허용 : 항상
            authorizedWhenInUse = 사용자가 앱을 사용하는 동안에만 위치를 사용할 수 있는 권한이 있는 상태,
                    위치접근허용 : 앱을 사용하는 동안
         */
        if status == CLAuthorizationStatus.denied || status == CLAuthorizationStatus.restricted {
            let alert = UIAlertController(title: "'플러그잇' 위치정보 이용", message: "\n'플러그잇' 앱은 사용자의 보다 정확한\n자동차 위치 파악을 위해 사용자의 위치정보를 \n필요로 합니다.", preferredStyle: .alert)
            // Change font and color of title
            
            alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold), NSAttributedString.Key.foregroundColor : UIColor.black]), forKey: "attributedTitle")
            
            alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13,weight: UIFont.Weight.regular),NSAttributedString.Key.foregroundColor :UIColor.black]), forKey: "attributedMessage")
            
            let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
            
            alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { (action:UIAlertAction!) in
                if let settingUrl = URL(string:UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(settingUrl)
                } else {
                    print("Setting URL invalid")
                }
            }))
            
            subview.backgroundColor = UIColor.white
            
            self.present(alert, animated: true)
        }
        else if status == CLAuthorizationStatus.authorizedWhenInUse {
        
        }else if status == CLAuthorizationStatus.notDetermined {
          
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func pushAlarmAuthorityCheck() {
        center.requestAuthorization(options: [.sound, .alert, .badge]) { (granted, error)
            in
            if granted {
                print("push허용")
            }else {
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "'플러그잇' 카메라 접근 권한", message: "\n'플러그잇' 앱은 사용자의 편의와\n필요한 알림 제공을 위해서 알림 권한을\n필요로 합니다.", preferredStyle: .alert)
                    // Change font and color of title
                    
                    alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold), NSAttributedString.Key.foregroundColor : UIColor.black]), forKey: "attributedTitle")
                    
                    alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13,weight: UIFont.Weight.regular),NSAttributedString.Key.foregroundColor :UIColor.black]), forKey: "attributedMessage")
                    
                    let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                    
                    alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { (action:UIAlertAction!) in
                        if let settingUrl = URL(string:UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(settingUrl)
                        } else {
                            print("Setting URL invalid")
                        }
                    }))
                    
                    subview.backgroundColor = UIColor.white
                    
                    self.present(alert, animated: true)
                }
            }
        }
    }
    
    func cameraAuthorityCheck() {
        AVCaptureDevice.requestAccess(for: AVMediaType.video) { response in
            if response {
                print("카메라 권한 잇음")
                //권한 획득시 실행될 명령
            } else {
                print("카메라 권한 없음")
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "'플러그잇' 카메라 접근 권한", message: "\n'플러그잇' 앱은 사용자의 보다 정확한\n자동차 위치 파악을 위해 카메라 접근 권한을\n필요로 합니다.", preferredStyle: .alert)
                    // Change font and color of title
                    
                    alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold), NSAttributedString.Key.foregroundColor : UIColor.black]), forKey: "attributedTitle")
                    
                    alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13,weight: UIFont.Weight.regular),NSAttributedString.Key.foregroundColor :UIColor.black]), forKey: "attributedMessage")
                    
                    let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                    
                    alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { (action:UIAlertAction!) in
                        if let settingUrl = URL(string:UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(settingUrl)
                        } else {
                            print("Setting URL invalid")
                        }
                    }))
                    
                    subview.backgroundColor = UIColor.white
                    
                    self.present(alert, animated: true)
                }
            }
        }
    }
    
    func albumAuthorityCheck() {
        PHPhotoLibrary.requestAuthorization({ (granted) in
            if (granted == PHAuthorizationStatus.authorized) { //접근 허용
                DispatchQueue.main.async {
                    
                }
            } else {
                DispatchQueue.main.async {
                    let alert = UIAlertController(title: "'플러그잇' 앨범 접근 권한", message: "\n'플러그잇' 앱은 사용자의 보다 정확한\n자동차 위치 파악을 위해 앨범 접근 권한을\n필요로 합니다.", preferredStyle: .alert)
                    // Change font and color of title
                    
                    alert.setValue(NSAttributedString(string: alert.title!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold), NSAttributedString.Key.foregroundColor : UIColor.black]), forKey: "attributedTitle")
                    
                    alert.setValue(NSAttributedString(string: alert.message!, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 13,weight: UIFont.Weight.regular),NSAttributedString.Key.foregroundColor :UIColor.black]), forKey: "attributedMessage")
                    
                    let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                    
                    alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { (action:UIAlertAction!) in
                        if let settingUrl = URL(string:UIApplication.openSettingsURLString) {
                            UIApplication.shared.open(settingUrl)
                        } else {
                            print("Setting URL invalid")
                        }
                    }))
                    
                    subview.backgroundColor = UIColor.white
                    
                    self.present(alert, animated: true)
                }
            }
        })
    }
    override var popupHeight: CGFloat { return height ?? CGFloat(300) }
    
    override var popupTopCornerRadius: CGFloat { return topCornerRadius ?? CGFloat(10) }
    
    //나타나는데 보여지는 시간
    override var popupPresentDuration: Double { return presentDuration ?? 0.325 }
    
    //사라지는데 보여지는 시간
    override var popupDismissDuration: Double { return dismissDuration ?? 0.325 }
    
    
    override var popupDimmingViewAlpha: CGFloat { return 0.4 }
    
}
