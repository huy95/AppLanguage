//
//  TutorialVC.swift
//  languageApp
//
//  Created by Huy on 7/13/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController {
    let textView: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .white
        textView.font = .boldSystemFont(ofSize: 14)
        return textView
    }()
    let buttonMain: UIButton = {
        let BT = UIButton(type: .system)
        let attribut = NSMutableAttributedString(string: "Học theo từng chủ đề ", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.red])
        
        attribut.append(NSAttributedString(string: "chủ đề", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.red]))
        BT.setAttributedTitle(attribut, for: .normal)
        //        BT.titleEdgeInsets = true
        BT.translatesAutoresizingMaskIntoConstraints = false
        BT.addTarget(self, action: #selector(showSignUP), for: .touchUpInside)
        return BT
    }()
    @objc func showSignUP(){
        let secondVC = ThemeMain()
        let navigation = UINavigationController(rootViewController: secondVC)
        
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupNavi()
    }
    func setupNavi(){
        view.backgroundColor = UIColor.colorBackground()
        title = "Hướng dẫn"
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
        cancelButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
    }
    @objc func cancelPress(){
//        let secondVC = MainViewApp()
//        let navigation = UINavigationController(rootViewController: secondVC)
        navigationController?.popViewController(animated: true)
//        navigation.modalPresentationStyle = .fullScreen
//        present(navigation, animated: true, completion: nil)
    }
    func setupLayout(){
        view.addSubview(textView)
        textView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        textView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        textView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        view.addSubview(buttonMain)
        buttonMain.heightAnchor.constraint(equalToConstant: 30).isActive = true
        buttonMain.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20).isActive = true
        buttonMain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        buttonMain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
    deinit {
        print("out side")
    }
}
