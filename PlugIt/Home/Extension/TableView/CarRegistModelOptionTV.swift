//
//  CarRegistModelOptionTV.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/27.
//

import UIKit

extension CarRegistModelOptionVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard let dataList = self.storeInfoReturn?.dataList else {
//            return 0
//        }
//        return dataList.count
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        carOptionOneCell = tableView.dequeueReusableCell(withIdentifier: "CarOptionOneCell") as? CarOptionOneCell
          
        if carOptionOneCell == nil {
            carOptionOneCell = Bundle.main.loadNibNamed("CarOptionOneCell", owner: self, options: nil)?.first as? CarOptionOneCell
        }
    
        //선택 시 색변경
//        carRegistColorCell?.cellWrap.layer.borderWidth = 2.0
//        carRegistColorCell?.cellWrap.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1).cgColor

        return carOptionOneCell!
    }
}
