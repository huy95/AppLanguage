//
//  AddRemindVC.swift
//  languageApp
//
//  Created by Huy on 7/20/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
import RealmSwift

class AddRemindVC: UIViewController {
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
        labelDiffent.font = .boldSystemFont(ofSize: 20)
        labelDiffent.text = "Khác"
        return labelDiffent
    }()
    var stackRemind : UIStackView = {
        let stackUnder = UIStackView()
        stackUnder.translatesAutoresizingMaskIntoConstraints = false
        stackUnder.axis = .horizontal
        stackUnder.alignment = .fill
        stackUnder.distribution = .equalSpacing
        //        stackUnder.spacing = 30
        return stackUnder
    }()
    var labelRemind : UILabel = {
        let labelRemind = UILabel()
        labelRemind.translatesAutoresizingMaskIntoConstraints = false
        labelRemind.font = .systemFont(ofSize: 16)
        labelRemind.text = "Lặp lại"
        return labelRemind
    }()
    let remindSwitch : UISwitch = {
        let checkSwitch = UISwitch()
        checkSwitch.translatesAutoresizingMaskIntoConstraints = false
        checkSwitch.isOn = true
        checkSwitch.onTintColor = UIColor.colorBackground()
        checkSwitch.addTarget(self, action: #selector(genderDidChange), for: .valueChanged)
        checkSwitch.thumbTintColor = UIColor.colorNavigation()
        return checkSwitch
    }()
    @objc func genderDidChange(_ sender: Any) {
        
        // eps kieu sender ve UISwitch
        if let genderSwitch = sender as? UISwitch {
            print("This is switch")
            print(genderSwitch.isOn)
            if genderSwitch.isOn {
                isCheck = true
            } else {
                isCheck = false
            }
        } else {
            print("No")
        }
       
    }
    var stackNotification : UIStackView = {
        let stackUnder = UIStackView()
        stackUnder.translatesAutoresizingMaskIntoConstraints = false
        stackUnder.axis = .horizontal
        stackUnder.alignment = .fill
        stackUnder.distribution = .equalSpacing
        //        stackUnder.spacing = 30
        return stackUnder
    }()
    var labelNotification : UILabel = {
        let labelRemind = UILabel()
        labelRemind.translatesAutoresizingMaskIntoConstraints = false
        labelRemind.font = .systemFont(ofSize: 16)
        labelRemind.text = "Tiếng chuông nhắc nhở"
        return labelRemind
    }()
    let notificationSwitch : UISwitch = {
        let checkSwitch = UISwitch()
        checkSwitch.translatesAutoresizingMaskIntoConstraints = false
        checkSwitch.isOn = true
        checkSwitch.onTintColor = UIColor.colorBackground()
        //            checkSwitch.addTarget(self, action: #selector(genderDidChange), for: .valueChanged)
        checkSwitch.thumbTintColor = UIColor.colorNavigation()
        return checkSwitch
    }()
    
    var stackVibration : UIStackView = {
        let stackVibration = UIStackView()
        stackVibration.translatesAutoresizingMaskIntoConstraints = false
        stackVibration.axis = .horizontal
        stackVibration.alignment = .fill
        stackVibration.distribution = .equalSpacing
        //        stackVibration.spacing = 30
        return stackVibration
    }()
    var labelVibration : UILabel = {
        let labelRemind = UILabel()
        labelRemind.translatesAutoresizingMaskIntoConstraints = false
        labelRemind.font = .systemFont(ofSize: 16)
        labelRemind.text = "Rung nhắc nhở"
        return labelRemind
    }()
    let vibrationSwitch : UISwitch = {
        let checkSwitch = UISwitch()
        checkSwitch.translatesAutoresizingMaskIntoConstraints = false
        checkSwitch.isOn = true
        checkSwitch.onTintColor = UIColor.colorBackground()
        //            checkSwitch.addTarget(self, action: #selector(genderDidChange), for: .valueChanged)
        checkSwitch.thumbTintColor = UIColor.colorNavigation()
        return checkSwitch
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
    
    
    var dayReminds : [DayRemind] = []
    let realm = try! Realm()
    var isCheck: Bool? = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()        // Do any additional setup after loading the
        setupNavi()
        //        isCheck = true
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
        //        viewText.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * 0.25).isActive = true labelDiffent
        viewText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -260).isActive = true
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
        //
        view.addSubview(labelDiffent)
        labelDiffent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -225).isActive = true
        labelDiffent.heightAnchor.constraint(equalToConstant: 30).isActive = true
        labelDiffent.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        labelDiffent.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        
        
        
        view.addSubview(stackRemind)
        stackRemind.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        stackRemind.heightAnchor.constraint(equalToConstant: 16).isActive = true
        stackRemind.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        stackRemind.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        stackRemind.addArrangedSubview(labelRemind)
        stackRemind.addArrangedSubview(remindSwitch)
        
        view.addSubview(stackNotification)
        stackNotification.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -160).isActive = true
        stackNotification.heightAnchor.constraint(equalToConstant: 16).isActive = true
        stackNotification.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        stackNotification.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        stackNotification.addArrangedSubview(labelNotification)
        stackNotification.addArrangedSubview(notificationSwitch)
        
        view.addSubview(stackVibration)
        stackVibration.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
        stackVibration.heightAnchor.constraint(equalToConstant: 16).isActive = true
        stackVibration.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        stackVibration.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        stackVibration.addArrangedSubview(labelVibration)
        stackVibration.addArrangedSubview(vibrationSwitch)
        
        
        
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
        dayRemind.isCheck = isCheck!
        dayRemind.time1 = test
        dayRemind.text1 = textView1.text
        DBManger.shareInstance.addData(dayRemind)
        
        let quizMC = RemindVC()
        
        quizMC.reloadInputViews()
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(quizMC, animated: true)
        
    }
    
    
}
