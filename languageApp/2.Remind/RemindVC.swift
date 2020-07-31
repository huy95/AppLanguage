//
//  RemindVC.swift
//  languageApp
//
//  Created by Huy on 7/20/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
import RealmSwift

class RemindVC: UIViewController {
    var tableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "RemindTableCell", bundle: nil), forCellReuseIdentifier: "cellRemind")
        return tableView
    }()
    var datas : Results<DayRemind>?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        setupLayout()
        tableView.reloadData()
        view.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
     
    }
    func setupNavi(){
        title = "Nhắc nhở"
        let addRemind = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(goAdd))
        addRemind.tintColor = .white
        navigationItem.rightBarButtonItem = addRemind
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
        cancelButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
    }
    @objc func cancelPress(){
        let secondVC = MainViewApp()
        let navigation = UINavigationController(rootViewController: secondVC)

        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
//        navigationController?.popViewController(animated: true)
    }
    @objc func goAdd(){
        let addRe = AddRemindVC()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(addRe, animated: true)
    }
    func setupLayout(){
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        fetchData()
        
    }

    func fetchData() {
        if let fetchedPhotos = DBManger.shareInstance.getAllData() {
            datas = fetchedPhotos
        }
        tableView.reloadData()
    }
    deinit {
        print("out side")
    }
}
extension RemindVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellRemind", for: indexPath) as! RemindTableCell
        cell.timeRimind.text = datas?[indexPath.row].time1
        cell.detailRemind.text = datas?[indexPath.row].text1
        if datas?[indexPath.row].isCheck == false {
            cell.Remindnumber.text = "nhiều lần"
        } else {
            cell.Remindnumber.text = "một lần"
        }
        cell.isCheck.isOn = true
        cell.reloadInputViews()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            DispatchQueue.main.async {

                let item = self.datas?[indexPath.row]
                DBManger.shareInstance.deleteItem(item!)
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let quizMC = UpdateRemind()

        quizMC.reloadInputViews()
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(quizMC, animated: true)
    }
}
