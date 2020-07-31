//
//  DetailTheme.swift
//  languageApp
//
//  Created by Huy on 7/10/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class DetailTheme: UIViewController {
    var dataDetailTheme : Theme? = nil
    var dataTheme : [DetailThemefake] {
        return dataDetailTheme?.clickColect ?? [DetailThemefake]()
    }
    var tableView1 : UITableView = {
        let tableView1 = UITableView()
        tableView1.translatesAutoresizingMaskIntoConstraints = false
        tableView1.register(DetailTableView.self, forCellReuseIdentifier: "cell1")
        tableView1.showsVerticalScrollIndicator = false
        tableView1.backgroundColor = UIColor.colorBackground()
        return tableView1
    }()
    var buttonnextQuiz : UIButton = {
        let buttinnextQuiz = UIButton()
        buttinnextQuiz.translatesAutoresizingMaskIntoConstraints = false
        buttinnextQuiz.setTitle("Game Quiz", for: .normal)
        buttinnextQuiz.setTitleColor(.white, for: .normal)
        buttinnextQuiz.backgroundColor = UIColor.colorButtonMain()
        buttinnextQuiz.titleLabel?.font = .systemFont(ofSize: 16)
        buttinnextQuiz.addTarget(self, action: #selector(nextQuiz), for: .touchUpInside)
        return buttinnextQuiz
    }()
    @objc func nextQuiz(){
        let quizMC = QuizQuestion()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        quizMC.dataQiz = dataDetailTheme
        
        navigationController?.pushViewController(quizMC, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        setupLayout()
        // Do any additional setup after loading the view.
    }
    
    func setupNavi(){
        view.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
        title = dataDetailTheme?.title
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.colorButtonMain()
        // an nut back
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
        cancelButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
    }
    @objc func cancelPress(){
        let secondVC = ThemeMain()
        let navigation = UINavigationController(rootViewController: secondVC)
        
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
    }
    
    func setupLayout(){
        view.addSubview(tableView1)
        view.addSubview(buttonnextQuiz)
        tableView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        tableView1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        buttonnextQuiz.topAnchor.constraint(equalTo: tableView1.bottomAnchor, constant: 5).isActive = true
        buttonnextQuiz.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        buttonnextQuiz.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        buttonnextQuiz.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        buttonnextQuiz.layer.cornerRadius = 10
        tableView1.delegate = self
        tableView1.dataSource = self
    }
    
}
extension DetailTheme: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataDetailTheme?.clickColect.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! DetailTableView
        cell.dataTable = dataTheme[indexPath.row]
//        cell.passAction = {[weak self] in
//            guard let strongSelf = self else { return }
//            let a = strongSelf.dataTheme[indexPath.row].clickReview
//            strongSelf.dataTheme[indexPath.row].clickReview = !a
//            tableView.reloadData()
            
//        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}
