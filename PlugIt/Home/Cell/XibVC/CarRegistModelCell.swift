//
//  CarRegistModelOptionCell.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/27.
//

import UIKit

class CarRegistModelCell:UICollectionViewCell {
//
//    @IBOutlet weak var thumbnail: UIImageView!
//    @IBOutlet weak var category: UILabel!
//    @IBOutlet weak var storeName: UILabel!
//    @IBOutlet weak var storeScore: UILabel!
    @IBOutlet weak var modelWrap: UIView!
    private var task: URLSessionDataTask?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        modelWrap.layer.cornerRadius = 15.0
        modelWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        modelWrap.layer.shadowOpacity = 0.12

        modelWrap.layer.shadowOffset = CGSize(width: 0, height: 0)
        modelWrap.layer.shadowRadius = 10.0
        
    }
    override func prepareForReuse() {
        //재 사용 시 이미지 리로딩에 관한 부분 처리
        //예시 https://stackoverflow.com/questions/35958826/swift-images-change-to-wrong-images-while-scrolling-after-async-image-loading-to
        task?.cancel()
        task = nil
//        thumbnail.image = nil
    }
    
    func thumbnailSetting(urlString: String) {
        if task == nil {
            // Ignore calls when reloading
//            task = thumbnail.downloadImage(from: urlString)
        }
    }
}
