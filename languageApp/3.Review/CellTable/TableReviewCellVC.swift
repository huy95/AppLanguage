//
//  TableReviewCellVC.swift
//  languageApp
//
//  Created by Huy on 7/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TableReviewCellVC: UITableViewCell {
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var imageTheme: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var isCheckReview: UIImageView!
    var dataReview : Theme? {
        didSet {
            if let dataReview = dataReview {
                imageTheme.image = UIImage(named: dataReview.ImageTheme)
                nameLabel.text = "Lession \(dataReview.ID) : \(dataReview.title)"
                detailLabel.text = dataReview.meanTitle
                isCheckReview.image = UIImage(named: dataReview.isCheckTheme ? "star1" : "starNo")
                
            }
        }
    }
    
    var passAction: (() -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        isCheckReview.image = UIImage(named: "star1")
        nameLabel.textColor = UIColor.init(red: 0, green: 95/255, blue: 208/255, alpha: 1)
        self.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        viewMain.layer.cornerRadius = 10
        // Configure the view for the selected state
        isCheckReview.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changeSelect))
        isCheckReview.addGestureRecognizer(gesture)
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    @objc func changeSelect(){
        // B2: gọi closure
        // ? để nếu không có chỗ nào đăng kí closure này thì thôi không gọi đến closure
        passAction?()
        // ?? neu food.name nil thi lay gia tri mac dinh

    }

    
}
