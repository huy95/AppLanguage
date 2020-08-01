//
//  TutorialVC.swift
//  languageApp
//
//  Created by Huy on 7/13/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController {
    let containerScroll: UIScrollView = {
        let textView = UIScrollView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .white
        return textView
    }()
    let containerView: UIView = {
        let textView = UIView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .white
        return textView
    }()
    var textView: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .white
        textView.numberOfLines = 0
//        textView.lineBreakMode = .byWordWrapping
        textView.font = .boldSystemFont(ofSize: 14)
        return textView
    }()
    let buttonMain: UIButton = {
        let BT = UIButton(type: .system)
        let attribut = NSMutableAttributedString(string: "Học theo từng chủ đề: ", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.red])
        
        attribut.append(NSAttributedString(string: "chọn chủ đề", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.red]))
        BT.setAttributedTitle(attribut, for: .normal)
        //        BT.titleEdgeInsets = true
        BT.translatesAutoresizingMaskIntoConstraints = false
        
        BT.addTarget(self, action: #selector(showSignUP), for: .touchUpInside)
        return BT
    }()
    @objc func showSignUP(){
        let secondVC = ThemeMain()
        let navigation = UINavigationController(rootViewController: secondVC)
        secondVC.isState = .update
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupNavi()
        setupLabel()

    }
    func setupNavi(){
        view.backgroundColor = UIColor.colorBackground()
        title = "Hướng dẫn"
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let cancelButton = UIBarButtonItem(image: UIImage(named: "left"), style: .plain, target: self, action: #selector(cancelPress))
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
        view.addSubview(containerScroll)
        containerScroll.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        containerScroll.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        containerScroll.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        containerScroll.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        containerScroll.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: containerScroll.topAnchor, constant: 10).isActive = true
        containerView.bottomAnchor.constraint(equalTo: containerScroll.bottomAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
//        containerView.heightAnchor.
        
        containerView.addSubview(textView)
        textView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        textView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        textView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        textView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
//        textView = textView.height
        
        view.addSubview(buttonMain)
        buttonMain.heightAnchor.constraint(equalToConstant: 30).isActive = true
        buttonMain.topAnchor.constraint(equalTo: containerScroll.bottomAnchor, constant: 20).isActive = true
        buttonMain.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        buttonMain.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
    }
    deinit {
        print("out side")
    }
    func setupLabel(){
        textView.text = """
        Học Từ Vựng
        
        Bạn có thể học chọn bộ 600 từ vựng toeic thông dụng nhất trong phần học từ vựng đã được phân chia thành các nhóm để bạn dễ tiếp cận và học
        
        Luật trò chơi
        
        
        """
    }
}
