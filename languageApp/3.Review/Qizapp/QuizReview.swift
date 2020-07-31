//
//  QuizReview.swift
//  languageApp
//
//  Created by Huy on 7/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
import AVFoundation

class QuizReview: UIViewController {
    
    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.init(red: 0, green: 95/255, blue: 208/255, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.bounces = false
        return tableView
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        return label
    }()
    
    let submitButton: UILabel = {
        let button = UILabel()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.colorNavigation()
        button.textColor = .black
        button.layer.cornerRadius = 20
        button.textAlignment = .center
        button.textColor = .white
        
        return button
    }()
    
    var soundPlayer: AVAudioPlayer?
    var dataQiz: Theme?
    // bộ câu hỏi
    var data : [Question] {
        return dataQiz?.questions ?? [Question]()
    }
    
    // index câu hiện tại
    var currentIndexQuestion: Int = 0
    // câu hỏi hiện tại
    var currentQuestion: Question{
        return data[currentIndexQuestion]
    }
    
    // tổng số câu hỏi
    var totalQuestion: Int = 1
    var heightBar: CGFloat!
    
    var timer: Timer!
    var numberSecond: Int = 0
    var timeType: Time = .start
    let view1 = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        getQuestion(currentIndexQuestion)
        totalQuestion = data.count
        configTableView()
        setupLayout()
        // reset
        for item in self.data{
            print("check for")
            for (_, i) in item.answers.enumerated(){
                if i.isSelected == true {
                    i.isSelected = false
                }
            }
        }
        // timer
        runTimer()
        viewTest()
    }
    func viewTest() {
        view1.frame = CGRect(x: 0, y: 200, width: 500, height: 500)
        view1.backgroundColor = .none
        view.addSubview(view1)
        view1.isHidden = true
    }
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        playSound()
        
    }
    @objc func runLoop(){
        numberSecond += 1
        submitButton.text = "\(numberSecond)"
         if numberSecond >= 4 {
        nextAnswer()
        }
    }
    func resetTimer(){
        numberSecond = 0
        
        timeType = .start
        timer.invalidate()
        
        soundPlayer?.pause()
        timer.invalidate()
        if numberSecond == 0 {
           submitButton.text = ""
        } else {
            submitButton.text = "\(numberSecond)"
        }
    }
    
    func nextAnswer(){
                self.resetTimer()
                if self.currentIndexQuestion < self.totalQuestion - 1 {
                    DispatchQueue.main.async {
                        self.currentIndexQuestion += 1
                        self.getQuestion(self.currentIndexQuestion)
                        self.submitButton.text = ""
                        self.tableView.reloadData()
                        self.runTimer()
                        self.view1.isHidden = true
                    }
                }
                else if self.currentIndexQuestion == self.totalQuestion - 1{
                    var point: Int = 0
                    for item in self.data{
                        for (index, i) in item.answers.enumerated(){
                            if i.isSelected == true && index + 1 == item.indexRightAnswer{
                                point += 1
                                
                                print(i.isSelected)
                                i.isSelected = false
                            }
                        }
                    }
                    
                    
                    let resultVC = ResultReviewVC()
                    resultVC.totalQuestion = self.totalQuestion
                    resultVC.numberCorrect = point
                    resultVC.dataReturn = self.dataQiz
                    
                    let navigation = UINavigationController(rootViewController: resultVC)
                    
                    navigation.modalPresentationStyle = .fullScreen
                    self.present(navigation, animated: true, completion: nil)
                
            }
        }
    func setupNavi(){
        view.backgroundColor = .white
        title = "Play Game"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 0, green: 95/255, blue: 208/255, alpha: 1)
        // an nut back
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(cancelPress))
        navigationItem.leftBarButtonItem = cancelButton
    }
    @objc func cancelPress(){
        //        dismiss(animated: true, completion: nil)
//        let secondVC = ReviewVC()
//        let navigation = UINavigationController(rootViewController: secondVC)
//
//        navigation.modalPresentationStyle = .fullScreen
//        present(navigation, animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        resetTimer()
    }
    func getQuestion(_ current: Int){
        questionLabel.text = "\(currentIndexQuestion + 1). \(data[current].question)"
    }
    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    func setupLayout(){
        heightBar = UIApplication.shared.statusBarFrame.size.height +
            (navigationController?.navigationBar.frame.height ?? 0.0)
        view.addSubview(topView)
        view.addSubview(tableView)
        
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20 + heightBar).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        topView.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true
        questionLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20).isActive = true
        questionLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -20).isActive = true
        
        view.addSubview(submitButton)
        submitButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        submitButton.layer.cornerRadius = 20
        
        tableView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20).isActive = true
        tableView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: submitButton.topAnchor, constant: -20).isActive = true
    }
    func playSound(){
        let path = Bundle.main.path(forResource: "music.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            // đặt numberOfLoops = -1 để nó chạy lại khi chạy hết
            soundPlayer?.numberOfLoops = -1
        } catch {
            print("lỗi")
            // couldn't load file :(
        }
    }
    deinit {
        print("outside")
    }
    
    
}
extension QuizReview: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentQuestion.answers.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let answer = currentQuestion.answers[indexPath.row]
        cell.answerTable = answer
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let concurrentQueue = DispatchQueue(label: "myConcurrentQueue", attributes: .concurrent)
        concurrentQueue.async(execute: DispatchWorkItem(qos: .default, flags: .barrier, block: {
            DispatchQueue.main.async {
                for item in self.currentQuestion.answers{
                    item.isSelected = false
                }
                self.currentQuestion.answers[indexPath.row].isSelected = true
                self.view1.isHidden = false
                self.resetTimer()
                
                tableView.reloadData()
            }
            sleep(UInt32(1))
            // kiểm tra câu hỏi hiện tại, nếu lớn hơn tổng số câu
            /*DispatchQueue.main.async {
                self.resetTimer()
                if self.currentIndexQuestion < self.totalQuestion - 1 {
                    DispatchQueue.main.async {
                        self.runTimer()
                        self.currentIndexQuestion += 1
                        self.getQuestion(self.currentIndexQuestion)
                        self.submitButton.text = ""
                        tableView.reloadData()
                    }
                }
                else if self.currentIndexQuestion == self.totalQuestion - 1{
                    var point: Int = 0
                    for item in self.data{
                        for (index, i) in item.answers.enumerated(){
                            if i.isSelected == true && index + 1 == item.indexRightAnswer{
                                point += 1
                                
                                print(i.isSelected)
                                i.isSelected = false
                            }
                        }
                    }
                    
                    
                    let resultVC = ResultReviewVC()
                    resultVC.totalQuestion = self.totalQuestion
                    resultVC.numberCorrect = point
                    resultVC.dataReturn = self.dataQiz
                    
                    let navigation = UINavigationController(rootViewController: resultVC)
                    
                    navigation.modalPresentationStyle = .fullScreen
                    self.present(navigation, animated: true, completion: nil)
                }
            }*/
            DispatchQueue.main.async {
                self.nextAnswer()
            }
        }
        ))
        
    }
}
