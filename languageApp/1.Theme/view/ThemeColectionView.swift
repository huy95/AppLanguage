//
//  ThemeColectionView.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ThemeColectionView: UICollectionViewCell {
    
    let container : UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .black
        return container
    }()
    
    let imageTheme : UIImageView = {
        let imageTheme = UIImageView()
        imageTheme.translatesAutoresizingMaskIntoConstraints = false
        imageTheme.image = UIImage(named: "")
        return imageTheme
    }()
    let labelLangage : UILabel = {
        let labelLangage = UILabel()
        labelLangage.translatesAutoresizingMaskIntoConstraints = false
        labelLangage.text = ""
        labelLangage.font = .boldSystemFont(ofSize: 14)
        labelLangage.textColor = UIColor.white
        labelLangage.textAlignment = .center
        labelLangage.backgroundColor = UIColor.init(red: 112/255, green: 112/255, blue: 112/255, alpha: 0.76)
        
        return labelLangage
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        self.backgroundColor = .clear
    }
    func setupLayout(){
        addSubview(container)
        container.addSubview(imageTheme)
        imageTheme.addSubview(labelLangage)
        
        container.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        container.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        container.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        container.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        
        imageTheme.topAnchor.constraint(equalTo: container.topAnchor, constant: 0).isActive = true
        imageTheme.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: 0).isActive = true
        imageTheme.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 0).isActive = true
        imageTheme.rightAnchor.constraint(equalTo: container.rightAnchor, constant: 0).isActive = true
        
        labelLangage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        labelLangage.leftAnchor.constraint(equalTo: imageTheme.leftAnchor, constant: 0).isActive = true
        labelLangage.rightAnchor.constraint(equalTo: imageTheme.rightAnchor, constant: 0).isActive = true
        labelLangage.bottomAnchor.constraint(equalTo: imageTheme.bottomAnchor, constant: 0).isActive = true
        
        imageTheme.layer.cornerRadius = 5
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
