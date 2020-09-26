//
//  CarRegistColorCell.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/26.
//

import UIKit

class CarRegistColorCell:UITableViewCell {

    @IBOutlet weak var cellWrap: UIView!
    @IBOutlet weak var colorWrap: UIView!
    
    @IBOutlet weak var colorName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellWrap.layer.cornerRadius = 15.0
        colorWrap.layer.cornerRadius = 10.0
        
        cellWrap.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor
        cellWrap.layer.shadowOpacity = 0.1

        cellWrap.layer.shadowOffset = CGSize(width: 0, height: 3)
        cellWrap.layer.shadowRadius = 10


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
          //재 사용 시 이미지 리로딩에 관한 부분 처리
      
    }
}
