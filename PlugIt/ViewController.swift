//
//  ViewController.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit
import SwiftyTimer

class ViewController: UIViewController {

    @IBOutlet weak var splashImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            self.animate()
        })
    }
    private func animate() {
        UIView.animate(withDuration: 0.3) {
            self.splashImage.transform = CGAffineTransform(rotationAngle: .pi)
        }
        
        UIView.animate(withDuration: 0.3) {
            self.splashImage.transform = CGAffineTransform(rotationAngle: .pi * 2)
        }
        
        let timer = Timer.new(every: 0.6.second) {}
        timer.start(modes: .tracking)
        Timer.every(0.6.second) { (timer: Timer) in
//            UIView.animate(withDuration: 0.5) {
//                self.helpWrap.alpha = 0.0
//            }
            timer.invalidate()
            //절친풀 설정으로 이동
            let startVC = mainStoryBoard.instantiateViewController(withIdentifier: "StartVC") as! StartVC
            //스토리보드의 객체로 홤면이동
            self.present(startVC, animated: true)
        }
    }
}

