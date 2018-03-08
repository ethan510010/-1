//
//  ViewController.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/6.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userImages = UserImages()

    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    @IBOutlet weak var myCollectionViewLayout: UICollectionViewFlowLayout!
    
    @IBOutlet weak var dayImage: UIImageView!
    
    @IBOutlet weak var bigUserImage: UIImageView!
    
    @IBOutlet weak var addMoreButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        
        //處理dayImageView
        dayImage.layer.cornerRadius = dayImage.frame.width/2
        dayImage.layer.masksToBounds = true
        dayImage.image = UIImage(named: "s1")
        
        
        //處理biguserImage
        bigUserImage.layer.cornerRadius = 10
        bigUserImage.layer.masksToBounds = true
        bigUserImage.image = UIImage(named: "s1")
        
        
        //處理addButton的外觀
        addMoreButton.makeBorderWithCornerRadius(radius: 5, borderColor: .clear, borderWidth: 0)
        //處理collectionView layout部分
        myCollectionViewLayout.itemSize = CGSize(width: 40, height: 40)
        myCollectionViewLayout.minimumLineSpacing = -7
//        myCollectionViewLayout.minimumInteritemSpacing = 
//        var collectionViewFlowLayout = UICollectionViewFlowLayout()
//        // A flow layout works with the collection view’s delegate object to determine the size of items, headers, and footers in each section and grid.
//        // That delegate object must conform to the UICollectionViewDelegateFlowLayout protocol.
//        
//        // MARK: UICollectionViewDelegateFlowLayout
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//            return CGSize(width: 10, height: 10)
//        }
//        
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
//            return 10
//        }
//        
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
//            return 10
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userImages.userImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.userImage.image = UIImage(named: userImages.userImages[indexPath.row])
        cell.userImage.makeBorderWithCornerRadius(radius: cell.userImage.frame.width/2.5, borderColor: .white, borderWidth: 2)
//        cell.userImage.layer.borderWidth = 2
//        cell.userImage.layer.borderColor = UIColor.white.cgColor
//        cell.userImage.layer.cornerRadius = cell.userImage.frame.width/2.5
//        cell.userImage.layer.masksToBounds = true
        

//        cell.contentView.layer.cornerRadius = 2.0
//        cell.contentView.layer.borderWidth = 1.0
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = true
        
        
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}
