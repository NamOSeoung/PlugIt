//
//  StartVC.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var scrollPage: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollViewContainerViewWidth: NSLayoutConstraint!
    
    @IBOutlet weak var closeBetaWrap: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollViewContainerViewWidth.constant = UIScreen.main.bounds.size.width * 4
        scrollView.delegate = self
        closeBetaWrap.layer.cornerRadius = 15.0
        
    }
    @IBAction func nextStepBtn(_ sender: Any) {
        
//        let signUpNameVC = signUpStoryBoard.instantiateViewController(withIdentifier: "SignUpNameVC") as! SignUpNameVC
//        self.present(signUpNameVC, animated: true, completion: nil)
        
        let carRegistColorVC = carRegistStoryBoard.instantiateViewController(withIdentifier: "CarRegistColorVC") as! CarRegistColorVC
        self.present(carRegistColorVC, animated: true, completion: nil)
    }
    
    func scrollToPage(page: Int, animated: Bool) {
        var frame: CGRect = self.scrollView.frame
        frame.origin.x = frame.size.width * CGFloat(page)
        frame.origin.y = 0
        self.scrollView.scrollRectToVisible(frame, animated: animated)
    }
    
}

//현재페이지 체크
extension StartVC: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentPage = Int(round(scrollView.contentOffset.x / scrollView.frame.size.width))
        scrollPage.currentPage = currentPage
    }
}
