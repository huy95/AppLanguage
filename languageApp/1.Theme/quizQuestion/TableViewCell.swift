//
//  TableViewCell.swift
//  languageApp
//
//  Created by Huy on 7/24/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var selectButton: UIImageView!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerTable: Answer? {
        didSet{
            if let answerTable = answerTable {
                answerLabel.text = answerTable.answer
//                selectButton.image = answerTable.isSelected ? UIImage(named: "ic_checked"): UIImage(named: "ic_uncheck")
//                checkMark
                selectButton.image = answerTable.isSelected ? UIImage(named: "checkBox"): UIImage(named: "unCheckBox")
            
            }
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
