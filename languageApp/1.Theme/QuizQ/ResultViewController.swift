//
//  ResultViewController.swift
//  languageApp
//
//  Created by Huy on 7/24/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var totalQuestion: Int!
    var numberCorrect: Int!
    var dataReturn: Theme?
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "picture")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red:0.29, green:0.75, blue:0.65, alpha:1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    let buttonScrenn: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.75, green:0.25, blue:0.65, alpha:1.0)
        label.setTitle("Nhóm từ khác", for: .normal)
        return label
    }()
    let buttonRemind: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red:0.29, green:0.75, blue:0.65, alpha:1.0)
        label.setTitle("Học lại từ", for: .normal)
        return label
    }()
    let buttonReturnMain: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .brown
        label.setTitle("về trang chủ", for: .normal)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 0, green: 100/255, blue: 208/255, alpha: 1)
        setupLayout()
        resultLabel.text = """
        SỐ CÂU ĐÚNG
        \(numberCorrect!)/\(totalQuestion!)
        """
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    
    func setupLayout(){
        view.addSubview(imageView)
        view.addSubview(resultLabel)
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 65).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -65).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        resultLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 100).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        resultLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        resultLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        view.addSubview(buttonScrenn)
        buttonScrenn.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 50).isActive = true
        buttonScrenn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        buttonScrenn.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2 - 50).isActive = true
        buttonScrenn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonScrenn.addTarget(self, action: #selector(setup), for: .touchUpInside)
        buttonScrenn.layer.cornerRadius = 5
        view.addSubview(buttonRemind)
        buttonRemind.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 50).isActive = true
        buttonRemind.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2 - 40).isActive = true
        buttonRemind.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonRemind.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonRemind.layer.cornerRadius = 5
        buttonRemind.addTarget(self, action: #selector(returnRemind), for: .touchUpInside)
        
        view.addSubview(buttonReturnMain)
        buttonReturnMain.topAnchor.constraint(equalTo: buttonRemind.bottomAnchor, constant: 50).isActive = true
        buttonReturnMain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        buttonReturnMain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonReturnMain.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonReturnMain.layer.cornerRadius = 5
        buttonReturnMain.addTarget(self, action: #selector(returnMain), for: .touchUpInside)
    }
    @objc func returnRemind(){
        let secondVC = DetailTheme()
        secondVC.dataDetailTheme = dataReturn
        navigationController?.navigationBar.barTintColor = UIColor.colorButtonMain()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    @objc func setup(){
        let secondVC = ThemeMain()
//        let navigation = UINavigationController(rootViewController: secondVC)
//        secondVC.dataQiz = dataReturn
        navigationController?.navigationBar.barTintColor = UIColor.colorButtonMain()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    let navigationBarAppearance = UINavigationBar.appearance()
    @objc func returnMain(){        
        navigationController?.navigationBar.barTintColor = UIColor.colorNavigation()
        self.navigationController?.popToRootViewController(animated: true)
        navigationController?.navigationBar.barTintColor = UIColor.colorNavigation()
    }
}
