//
//  RemindTableCell.swift
//  languageApp
//
//  Created by Huy on 7/21/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class RemindTableCell: UITableViewCell {
    
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var timeRimind: UILabel!
    
    @IBOutlet weak var Remindnumber: UILabel!
    
    @IBOutlet weak var detailRemind: UILabel!
    
    @IBOutlet weak var isCheck: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
        viewMain.layer.cornerRadius = 10
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
