//
//  ResultReviewVC.swift
//  languageApp
//
//  Created by Huy on 7/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ResultReviewVC: UIViewController {
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
    let buttonScreen: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 0.75, green:0.25, blue:0.65, alpha:1.0)
        label.setTitle("Học lại từ", for: .normal)
        return label
    }()
    let buttonNew: UIButton = {
        let label = UIButton()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red:0.29, green:0.75, blue:0.65, alpha:1.0)
        label.setTitle("Học nhóm mới", for: .normal)
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
        //        setupNavigationBar()
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
        
        
        view.addSubview(buttonScreen)
        buttonScreen.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 50).isActive = true
        buttonScreen.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        buttonScreen.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2 - 50).isActive = true
        buttonScreen.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonScreen.addTarget(self, action: #selector(viewQiz), for: .touchUpInside)
        buttonScreen.layer.cornerRadius = 5
        view.addSubview(buttonNew)
        buttonNew.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 50).isActive = true
        buttonNew.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2 - 40).isActive = true
        buttonNew.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonNew.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonNew.layer.cornerRadius = 5
        buttonNew.addTarget(self, action: #selector(returnNew), for: .touchUpInside)
        
        view.addSubview(buttonReturnMain)
        buttonReturnMain.topAnchor.constraint(equalTo: buttonNew.bottomAnchor, constant: 50).isActive = true
        buttonReturnMain.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        buttonReturnMain.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        buttonReturnMain.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonReturnMain.layer.cornerRadius = 5
        buttonReturnMain.addTarget(self, action: #selector(returnMain), for: .touchUpInside)
    }
    @objc func returnNew(){
        for vc in navigationController!.viewControllers{
            if let vc = vc as? ReviewVC {
//                let vc = MainViewApp()
                navigationController?.popToViewController(vc, animated: true)
            }
        }
        
    }
    @objc func viewQiz(){
        navigationController?.pushViewController(ThemeMain(), animated: true)
    }
    @objc func returnMain(){
        navigationController?.popToRootViewController(animated: true)
    }
    
    deinit {
        print("test")
    }
    //    override func viewWillAppear(_ animated: Bool) {
    //           super.viewWillAppear(animated)
    //
    //           // set cho navigationBar trong suốt để thấy ảnh ở background (cần đủ 3 dòng)
    //           self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
    //           self.navigationController!.navigationBar.shadowImage = UIImage()
    //           self.navigationController!.navigationBar.isTranslucent = true
    //       }
}


