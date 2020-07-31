//
//  UpdateRemind.swift
//  languageApp
//
//  Created by Huy on 7/27/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
import RealmSwift

class UpdateRemind: UIViewController {
    var passedRemind: DayRemind?
    var timeDatePicker : UIDatePicker = {
        let timeDatePicker = UIDatePicker()
        timeDatePicker.translatesAutoresizingMaskIntoConstraints = false
        timeDatePicker.datePickerMode = .time
        timeDatePicker.tintColor = UIColor.red
        //        timeDatePicker.backgroundColor = .green
        timeDatePicker.setDate(Date(), animated: true)
        return timeDatePicker
    }()
    var viewText : UIView = {
        let viewText = UIView()
        viewText.translatesAutoresizingMaskIntoConstraints = false
        viewText.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
        return viewText
    }()
    var textView1 : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = .boldSystemFont(ofSize: 14)
        textView.backgroundColor = .white
        return textView
    }()
    var labelText : UILabel = {
        let labelText = UILabel()
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText.font = .boldSystemFont(ofSize: 20)
        labelText.text = "Nội dung nhắc nhở"
        labelText.textAlignment = .center
        return labelText
    }()
    
    var labelDiffent : UILabel = {
        let labelDiffent = UILabel()
        labelDiffent.translatesAutoresizingMaskIntoConstraints = false
        labelDiffent.font = .boldSystemFont(ofSize: 16)
        labelDiffent.text = "Khác"
        return labelDiffent
    }()
    var labelRemind : UILabel = {
        let labelRemind = UILabel()
        labelRemind.translatesAutoresizingMaskIntoConstraints = false
        labelRemind.font = .boldSystemFont(ofSize: 13)
        labelRemind.text = "Lặp lại"
        return labelRemind
    }()
    var labelNotification : UILabel = {
        let labelRemind = UILabel()
        labelRemind.translatesAutoresizingMaskIntoConstraints = false
        labelRemind.font = .boldSystemFont(ofSize: 13)
        labelRemind.text = "thay đổi nhạc chuông thông báo"
        return labelRemind
    }()
    
    var buttonRemind : UIButton = {
        let buttonRemind = UIButton()
        buttonRemind.translatesAutoresizingMaskIntoConstraints = false
        buttonRemind.setTitle("một lần ▸", for: .normal)
        buttonRemind.setTitleColor(.black, for: .normal)
        
        return buttonRemind
    }()
    var buttonNotification : UIButton = {
        let buttonRemind = UIButton()
        buttonRemind.translatesAutoresizingMaskIntoConstraints = false
        buttonRemind.setTitle("thay đổi ▸", for: .normal)
        buttonRemind.setTitleColor(.black, for: .normal)
        
        return buttonRemind
    }()
    var stackUnder : UIStackView = {
        let stackUnder = UIStackView()
        stackUnder.translatesAutoresizingMaskIntoConstraints = false
        stackUnder.axis = .horizontal
        stackUnder.alignment = .fill
        stackUnder.distribution = .fillEqually
        stackUnder.spacing = 30
        return stackUnder
    }()
    var buttonCancel : UIButton = {
        let buttonRemind = UIButton()
        buttonRemind.translatesAutoresizingMaskIntoConstraints = false
        buttonRemind.setTitle("Hủy bỏ", for: .normal)
        buttonRemind.setTitleColor(.white, for: .normal)
        buttonRemind.backgroundColor = .red
        buttonRemind.addTarget(self, action: #selector(remindCancel), for: .touchUpInside)
        return buttonRemind
    }()
    @objc func remindCancel(){
        navigationController?.popViewController(animated: true)
    }
    
    
    var buttonFinish : UIButton = {
        let buttonRemind = UIButton()
        buttonRemind.translatesAutoresizingMaskIntoConstraints = false
        buttonRemind.setTitle("Hoàn thành", for: .normal)
        buttonRemind.setTitleColor(.white, for: .normal)
        buttonRemind.backgroundColor = UIColor.init(red: 90/255, green: 157/255, blue: 86/255, alpha: 100)
        buttonRemind.addTarget(self, action: #selector(remindFinish), for: .touchUpInside)
        return buttonRemind
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()        // Do any additional setup after loading the
        setupNavi()
        // an nut back
        self.navigationItem.setHidesBackButton(true, animated:true)
        
    }
    func setupNavi(){
        title = "Thêm nhắc nhở"
        view.backgroundColor = .white
    }
    func setupLayout(){
        view.addSubview(timeDatePicker)
        timeDatePicker.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        timeDatePicker.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.4).isActive = true
        timeDatePicker.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        timeDatePicker.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
        view.addSubview(viewText)
        viewText.topAnchor.constraint(equalTo: timeDatePicker.bottomAnchor, constant: 0).isActive = true
        viewText.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.25).isActive = true
        viewText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        viewText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        viewText.layer.cornerRadius = 10
        viewText.addSubview(labelText)
        labelText.topAnchor.constraint(equalTo: viewText.topAnchor, constant: 5).isActive = true
        labelText.heightAnchor.constraint(equalToConstant: 24).isActive = true
        labelText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        labelText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        
        viewText.addSubview(textView1)
        textView1.topAnchor.constraint(equalTo: labelText.bottomAnchor, constant: 5).isActive = true
        textView1.bottomAnchor.constraint(equalTo: viewText.bottomAnchor, constant: -10).isActive = true
        textView1.leftAnchor.constraint(equalTo: viewText.leftAnchor, constant: 15).isActive = true
        textView1.rightAnchor.constraint(equalTo: viewText.rightAnchor, constant: -15).isActive = true
        
        view.addSubview(stackUnder)
        stackUnder.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        stackUnder.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackUnder.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        stackUnder.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        stackUnder.addArrangedSubview(buttonCancel)
        stackUnder.addArrangedSubview(buttonFinish)
        buttonCancel.layer.cornerRadius = 5
        buttonFinish.layer.cornerRadius = 5
    }
    @objc func remindFinish(){
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"
        let test = timeFormatter.string(from: timeDatePicker.date)
        let dayRemind = DayRemind()
        
        dayRemind.isCheck = true
        dayRemind.time1 = test
        dayRemind.text1 = textView1.text
        DBManger.shareInstance.updatePersonByID(id: "updatePersonByID", object: dayRemind)
        
        let quizMC = RemindVC()
        
        quizMC.reloadInputViews()
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(quizMC, animated: true)
    }
}
