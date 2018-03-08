//
//  SecondViewController.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/6.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var collectionItems = ItemName()
    //此變數的設定是要針對collectionView點擊，下方scrolleView切換
    var scrollPage: Int = 0
    //此變數設定是要針對scrollView滑動，上方的collectionView切換
    var scrollViewCurrentPage: Int = 0
    
    @IBOutlet weak var controllCollectionView: UICollectionView!
    
    @IBOutlet weak var controllCollectionviewLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.makeBorderWithCornerRadius(radius: userPhoto.frame.width/2, borderColor: .clear, borderWidth: 0)
        userPhoto.image = UIImage(named: "s1")
        
        //collectionView的layout控制
        controllCollectionviewLayout.itemSize = CGSize(width: view.frame.width/2-5, height: view.frame.height/10)

        controllCollectionView.delegate = self
        controllCollectionView.dataSource = self
        
        //將第一個設為true
        collectionItems.didTapped[0] = true
        
        
        //處理scrollView
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: self.view.frame.width * 2, height: self.view.frame.height * (520/667))
        
        //把ThirdViewController加到scrollView
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdTableViewController = mainStoryboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
        self.addChildViewController(thirdTableViewController)
        self.scrollView.addSubview(thirdTableViewController.view)
        thirdTableViewController.didMove(toParentViewController: self)
        //把FourthViewController加到scrollView
        let fourthViewController = mainStoryboard.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        self.addChildViewController(fourthViewController)
        self.scrollView.addSubview(fourthViewController.view)
        fourthViewController.didMove(toParentViewController: self)
        
        
        var frameForFourthViewController = fourthViewController.view.frame
        frameForFourthViewController.origin.x = self.view.frame.width
        fourthViewController.view.frame = frameForFourthViewController
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionItems.itemNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! ControllCollectionViewCell
        cell.itemName.text = collectionItems.itemNames[indexPath.row]
        
        //控制scrollbar的邏輯
        if collectionItems.didTapped[indexPath.row] == true{
            cell.scrollBar.isHidden = false
            collectionItems.didTapped[indexPath.row] = false
        }else{
            cell.scrollBar.isHidden = true
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ControllCollectionViewCell
        collectionItems.didTapped[indexPath.row] = true
        
        //設定collectionView點擊，下方scrollView會切換
        scrollPage = indexPath.item
        scrollView.setContentOffset(CGPoint(x:view.frame.width * CGFloat(scrollPage),y:0), animated: true)
        collectionView.reloadData()
        
    }
}

extension SecondViewController: UIScrollViewDelegate{
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //取得現在捲動到的頁數
        scrollViewCurrentPage = Int(round(scrollView.contentOffset.x / scrollView.frame.size.width))
        //要將collectionView與兩者分開
        if scrollPage != scrollViewCurrentPage{
            collectionView(controllCollectionView, didSelectItemAt: [0,scrollViewCurrentPage])
            controllCollectionView.scrollToItem(at: [0,scrollViewCurrentPage], at: .left, animated: true)
        }
        
    }
}


