//
//  AlarmPageTV.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/25.
//

import UIKit

extension AlarmPageVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard let dataList = self.storeInfoReturn?.dataList else {
//            return 0
//        }
//        return dataList.count
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        guard let dataList = self.storeInfoReturn?.dataList else {
//            return UITableViewCell.init()
//        }
//
        alarmCell = tableView.dequeueReusableCell(withIdentifier: "AlarmCell") as? AlarmCell
          
        if alarmCell == nil {
            alarmCell = Bundle.main.loadNibNamed("AlarmCell", owner: self, options: nil)?.first as? AlarmCell
        }
    

        return alarmCell!
    }

//    @objc func areaHeaderEvent(_ gesture: UITapGestureRecognizer) {
//        let view = gesture.view
//        let tag = view?.tag
//        guard let dataList = self.areaHeaderData?.dataList else {
//            return
//        }
//
//        var index:Int = 0
//        for _ in dataList {
//            self.areaHeaderData?.dataList[index].selectedFlag = false
//            index += 1
//        }
//
//        self.areaHeaderData?.dataList[tag!].selectedFlag = true
//        DispatchQueue.main.async {
//            self.areaTV.reloadData()
//        }
//
//        let areaCode = dataList[tag!].area
//        let areaName = dataList[tag!].area_name
//        self.areaHeader = areaName
//        getAreaDetail(callingView: self as Any, areaId: areaCode)
//    }
//
//    @objc func areaDetailEvent(_ gesture: UITapGestureRecognizer) {
//        let view = gesture.view
//        let tag = view?.tag
//        guard let dataList = self.areaDetailData?.dataList else {
//            return
//        }
//
//        let areaName:String = dataList[tag!].area_name
//        if tag! == 0 {
//            self.searchResultMove(keyword: areaName)
//        }else {
//            self.searchResultMove(keyword: areaHeader + " " + areaName)
//        }
//    }
}
