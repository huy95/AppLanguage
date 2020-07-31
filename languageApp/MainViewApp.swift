//
//  MainViewApp.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class MainViewApp: UIViewController {
    var viewtop : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "picture")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    var stackViewMain : UIStackView = {
        let a = UIStackView()
        a.translatesAutoresizingMaskIntoConstraints = false
        a.axis = .vertical // doc
        a.alignment = .fill
        a.distribution = .equalSpacing
        return a
    }()
    var buttonTheme : CustomButton = {
        let buttonTheme = CustomButton()
        buttonTheme.setImage(UIImage(named: "book"), for: .normal)
        buttonTheme.setTitle("Học theo chủ đề", for: .normal)
        buttonTheme.addTarget(self, action: #selector(nextTheme), for: .touchUpInside)
        return buttonTheme
    }()
    @objc func nextTheme(){
        let themeMC = ThemeMain()
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
//        self.navigationItem.backBarButtonItem?.tintColor = .white
        
        
        navigationController?.pushViewController(themeMC, animated: true)
        // present - dissmiss + push - pop
    }
    var buttonRemind : CustomButton = {
        let buttonRemind = CustomButton()
        buttonRemind.setImage(UIImage(named: "timer"), for: .normal)
        buttonRemind.setTitle("Nhắc nhở hằng ngày", for: .normal)
        
        buttonRemind.addTarget(self, action: #selector(nextRemind), for: .touchUpInside)
        return buttonRemind
    }()
    @objc func nextRemind (){
        print("nextRemind")
        let ReMC = RemindVC()
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
//        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(ReMC, animated: true)
    }
    var buttonReview : CustomButton = {
        let buttonReview = CustomButton()
        buttonReview.setImage(UIImage(named: "mind"), for: .normal)
        buttonReview.contentHorizontalAlignment = .left
        buttonReview.titleEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        buttonReview.setTitle("Ôn tập từ vựng", for: .normal)
        buttonReview.addTarget(self, action: #selector(nextReview), for: .touchUpInside)
        return buttonReview
    }()
    @objc func nextReview(){
        print("ReviewVC")
        let ReMC = ReviewVC()
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
//        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(ReMC, animated: true)
    }
    var buttonTutorial : CustomButton = {
        let buttonTutorial = CustomButton()
        buttonTutorial.setImage(UIImage(named: "use"), for: .normal)
        buttonTutorial.setTitle("Hướng dẫn sử dụng", for: .normal)
        buttonTutorial.addTarget(self, action: #selector(nextTutorial), for: .touchUpInside)
        return buttonTutorial
    }()
    @objc func nextTutorial(){
        print("nextTutorial")
        let themeMC = TutorialVC()
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
//        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(themeMC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupLayout()
        // Do any additional setup after loading the view.
    }
    func setupNavigation(){
        title = "EngSmart - Học tiếng anh"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.colorNavigation()
        view.backgroundColor = UIColor.colorBackground()
    }
    func setupLayout(){
        view.addSubview(viewtop)
        viewtop.topAnchor.constraint(equalTo: view.topAnchor, constant: UIApplication.shared.statusBarFrame.size.height + (navigationController?.navigationBar.frame.height)!).isActive = true
        viewtop.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.3).isActive = true
        viewtop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        viewtop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        view.addSubview(stackViewMain)
        stackViewMain.topAnchor.constraint(equalTo: viewtop.bottomAnchor, constant: 50).isActive = true
        stackViewMain.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        stackViewMain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        stackViewMain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        stackViewMain.addArrangedSubview(buttonTheme)
        buttonTheme.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1).isActive = true
        buttonTheme.layer.cornerRadius = 5
        
        stackViewMain.addArrangedSubview(buttonRemind)
        buttonRemind.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1).isActive = true
        buttonRemind.layer.cornerRadius = 5
        
        stackViewMain.addArrangedSubview(buttonReview)
        buttonReview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1).isActive = true
        buttonReview.layer.cornerRadius = 5
        
        stackViewMain.addArrangedSubview(buttonTutorial)
        buttonTutorial.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.1).isActive = true
        buttonTutorial.layer.cornerRadius = 5
        
    }
    
}
