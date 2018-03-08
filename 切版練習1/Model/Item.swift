//
//  Item.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/7.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import Foundation

class Item {
        var itemName:String
        var date:String
        var category:String
        var itemImage:String
        var starsNumber:Int
        var isSelected:Bool

    
    init(itemName:String,date:String,category:String,itemImage:String,starsNumber:Int, isSelected:Bool) {
        self.itemName = itemName
        self.date = date
        self.category = category
        self.itemImage = itemImage
        self.starsNumber = starsNumber
        self.isSelected = isSelected
    }
}
