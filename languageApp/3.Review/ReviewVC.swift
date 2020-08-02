//
//  RemindVC.swift
//  languageApp
//
//  Created by Huy on 7/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ReviewVC: UIViewController {
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(UINib(nibName: "TableReviewCellVC", bundle: nil), forCellReuseIdentifier: "ReviewCell")
        tableView.separatorStyle = .none
        return tableView
    }()
    
    
    var datas : [Theme] = []
    override func viewDidLoad() {
        datas = fakeDatas()
        super.viewDidLoad()
        setupNavi()
        setupLayout()
        
        // Do any additional setup after loading the view.
    }
    func setupNavi(){
        view.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        title = "Chủ đề"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.colorNavigation()
        // an nut back
        self.navigationItem.setHidesBackButton(true, animated:true)
//        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
        
        let cancelButton = UIBarButtonItem(image: UIImage(named: "left"), style: .plain, target: self, action: #selector(cancelPress))
        cancelButton.tintColor = UIColor.white
        navigationItem.leftBarButtonItem = cancelButton
    }
    @objc func cancelPress(){
//        for vc in navigationController!.viewControllers{
//            if let vc = vc as? MainViewApp {
////                let vc = MainViewApp()
//                navigationController?.popToViewController(vc, animated: true)
//            }
//        }
        navigationController?.popToRootViewController(animated: true)
//        let secondVC = MainViewApp()
//        let navigation = UINavigationController(rootViewController: secondVC)
//
//        navigation.modalPresentationStyle = .fullScreen
//        present(navigation, animated: true, completion: nil)
//        navigationController?.popViewController(animated: true)
        
    }
    func setupLayout(){
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
    }
    deinit {
        print("outside")
    }
}

extension ReviewVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCell", for: indexPath) as! TableReviewCellVC
        cell.dataReview = datas[indexPath.row]
        cell.passAction = {[weak self] in
            // check self co bi nil khong, neu khong bi nil thi gan self cho strongSelf
            guard let strongSelf = self else { return }

            strongSelf.datas[indexPath.row].isCheckTheme = !strongSelf.datas[indexPath.row].isCheckTheme
            
            tableView.reloadData()
        }

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var check = datas[indexPath.row].isCheckTheme
        
        check = !check
        
        let quizMC = QuizReview()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        quizMC.dataQiz = datas[indexPath.row]
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(quizMC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

