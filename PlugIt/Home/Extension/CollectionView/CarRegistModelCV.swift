//
//  CarRegistModelOptionCV.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/27.
//

import UIKit

extension CarRegistModelVC: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
       
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    
        carRegistModelCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarRegistModelCell", for: indexPath) as? CarRegistModelCell
//
//            let subject:String = dataList[indexPath.row].title!
//            let thumbnail:String = dataList[indexPath.row].thumbnail_url!
//
//            homeYoutubeCell?.subject.text = subject
//            homeYoutubeCell?.thumbnailSetting(urlString: thumbnail)
//
        return carRegistModelCell!
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        var width = CGFloat(0.0)
        var height = CGFloat(0.0)
        
         width = deviceWidth/2
         height = deviceWidth/2
        
        let size = CGSize(width: width, height: height)
        
        return size
    
    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 30.0
//    }
////
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 30.0
//    }
//
}

