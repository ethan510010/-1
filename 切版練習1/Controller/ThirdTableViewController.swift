//
//  TableViewController.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/7.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ThirdTableViewController: UIViewController, StarButtonDidTappedDelegate {
    
    
    func starButtonDidTapped(index: IndexPath, tag:Int) {
        switch tag {
        case 101:
            items.items[index.row].starsNumber = 1
            tableView.reloadData()
            print(index.row)
            print(items.items[index.row].starsNumber)
        case 102:
            items.items[index.row].starsNumber = 2
            tableView.reloadData()
            print(index.row)
            print(items.items[index.row].starsNumber)
        case 103:
            items.items[index.row].starsNumber = 3
            tableView.reloadData()
            print(index.row)
            print(items.items[index.row].starsNumber)
        case 104:
            items.items[index.row].starsNumber = 4
            tableView.reloadData()
            print(index.row)
            print(items.items[index.row].starsNumber)
        case 105:
            items.items[index.row].starsNumber = 5
            tableView.reloadData()
            print(index.row)
            print(items.items[index.row].starsNumber)
        default:
            items.items[index.row].starsNumber = 0
            tableView.reloadData()
        }
    }
    
   
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextStepButton: UIButton!

    
    
    var items = ItemsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        //處理button
        nextStepButton.backgroundColor = .blue
        nextStepButton.layer.cornerRadius = 10
        nextStepButton.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}

extension ThirdTableViewController:UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return ItemsManager.itemsManager.items.count
        return items.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! IntroductionTableViewCell
//        cell.topic.text = ItemsManager.itemsManager.items[indexPath.row].itemName
//        cell.dateLabel.text = ItemsManager.itemsManager.items[indexPath.row].date
//        cell.category.text = ItemsManager.itemsManager.items[indexPath.row].category
//        cell.photoImage.image = UIImage(named: ItemsManager.itemsManager.items[indexPath.row].itemImage)
        //
        cell.index = indexPath
        cell.delegate = self
        
        
        switch items.items[indexPath.row].starsNumber {
//        case 0:
//            cell.starButton1.imageView?.image = UIImage(named:"starGray")
//            cell.starButton2.imageView?.image = UIImage(named:"starGray")
//            cell.starButton3.imageView?.image = UIImage(named:"starGray")
//            cell.starButton4.imageView?.image = UIImage(named:"starGray")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        case 1:
            print(items.items[indexPath.row].starsNumber)
            cell.starButton1.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starGray"), for: .normal)
            
//            cell.starButton1.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton2.imageView?.image = UIImage(named:"starGray")
//            cell.starButton3.imageView?.image = UIImage(named:"starGray")
//            cell.starButton4.imageView?.image = UIImage(named:"starGray")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        case 2:
            cell.starButton1.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starGray"), for: .normal)
//            cell.starButton1.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton2.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton3.imageView?.image = UIImage(named:"starGray")
//            cell.starButton4.imageView?.image = UIImage(named:"starGray")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        case 3:
            cell.starButton1.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starGray"), for: .normal)
//            cell.starButton1.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton2.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton3.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton4.imageView?.image = UIImage(named:"starGray")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        case 4:
            cell.starButton1.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starGray"), for: .normal)
//            cell.starButton1.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton2.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton3.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton4.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        case 5:
            cell.starButton1.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starOrange"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starOrange"), for: .normal)
//            cell.starButton1.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton2.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton3.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton4.imageView?.image = UIImage(named:"starOrange")
//            cell.starButton5.imageView?.image = UIImage(named:"starOrange")
        default:
            cell.starButton1.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton2.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton3.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton4.setImage(UIImage(named:"starGray"), for: .normal)
            cell.starButton5.setImage(UIImage(named:"starGray"), for: .normal)
//            cell.starButton1.imageView?.image = UIImage(named:"starGray")
//            cell.starButton2.imageView?.image = UIImage(named:"starGray")
//            cell.starButton3.imageView?.image = UIImage(named:"starGray")
//            cell.starButton4.imageView?.image = UIImage(named:"starGray")
//            cell.starButton5.imageView?.image = UIImage(named:"starGray")
        }
        
        
        
        
        
        
        //
        cell.topic.text = items.items[indexPath.row].itemName
        cell.dateLabel.text = items.items[indexPath.row].date
        cell.category.text = items.items[indexPath.row].category
        cell.photoImage.image = UIImage(named: items.items[indexPath.row].itemImage)
        
        if items.items[indexPath.row].isSelected{
            cell.whiteView.layer.borderWidth = 2
            cell.whiteView.layer.borderColor = UIColor.blue.cgColor
            cell.checkLabel.backgroundColor = UIColor(red: 66/255, green: 158/255, blue: 255/255, alpha: 1)
        }else{
            cell.whiteView.layer.borderColor = UIColor.clear.cgColor
            cell.checkLabel.backgroundColor = UIColor(red: 19/255, green: 236/255, blue: 255/255, alpha: 0.34)
        }
        
//        if ItemsManager.itemsManager.items[indexPath.row].isSelected {
//            cell.whiteView.layer.borderWidth = 2
//            cell.whiteView.layer.borderColor = UIColor.blue.cgColor
//            cell.checkLabel.backgroundColor = UIColor(red: 66/255, green: 158/255, blue: 255/255, alpha: 1)
//        } else {
//            cell.whiteView.layer.borderColor = UIColor.clear.cgColor
//            cell.checkLabel.backgroundColor = UIColor(red: 19/255, green: 236/255, blue: 255/255, alpha: 0.34)
//        }
        
        
        //讓tableviewCell被點擊到時完全沒變化
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(view.frame.height * (110/520))
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        ItemsManager.itemsManager.items[indexPath.row].isSelected = !ItemsManager.itemsManager.items[indexPath.row].isSelected
        for i in 0..<items.items.count{
            items.items[i].isSelected = false
        }
        items.items[indexPath.row].isSelected = true

        tableView.reloadData()
        
    }
    

  
    
}


