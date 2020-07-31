//
//  CustombuttonMain.swift
//  languageApp
//
//  Created by Huy on 7/29/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import UIKit
class CustomButton: UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.init(red: 0, green: 95/255, blue: 208/255, alpha: 1)
        self.titleLabel?.font = .systemFont(ofSize: 24)
        self.contentHorizontalAlignment = .left
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        self.setTitleColor(.white, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
