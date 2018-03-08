//
//  IntroductionTableViewCell.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/7.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

protocol StarButtonDidTappedDelegate {
    func starButtonDidTapped(index:IndexPath, tag:Int)
    
}

class IntroductionTableViewCell: UITableViewCell {
    
    var index:IndexPath?
    
    var delegate:StarButtonDidTappedDelegate?
    
    @IBOutlet weak var starButton1: UIButton!
    
    @IBOutlet weak var starButton2: UIButton!
    
    @IBOutlet weak var starButton3: UIButton!
    
    @IBOutlet weak var starButton4: UIButton!
    
    @IBOutlet weak var starButton5: UIButton!
    
    @IBAction func starButton1(_ sender: UIButton) {
        delegate?.starButtonDidTapped(index: index!, tag: 101)
    }
    
    @IBAction func starButton2(_ sender: UIButton) {
        delegate?.starButtonDidTapped(index: index!, tag: 102)
        
    }
    
    @IBAction func starButton3(_ sender: UIButton) {
        delegate?.starButtonDidTapped(index: index!, tag: 103)
    }
    
    @IBAction func starButton4(_ sender: UIButton) {
        delegate?.starButtonDidTapped(index: index!, tag: 104)
    }
    
    @IBAction func starButton5(_ sender: UIButton) {
        delegate?.starButtonDidTapped(index: index!, tag: 105)
    }
    
    var items = ItemsManager()
    
    
    var currentTappedStarNumber:Int = 0
  
    
    @IBOutlet weak var whiteView: UIView!
    
    @IBOutlet weak var photoImage: UIImageView!
    
    @IBOutlet weak var topic: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        whiteView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}



