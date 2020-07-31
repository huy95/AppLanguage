//
//  QuizQuestion.swift
//  languageApp
//
//  Created by Huy on 7/11/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class QuizQuestion: UIViewController {
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
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Kết quả", for: .normal)
        button.addTarget(self, action: #selector(submitResult), for: .touchUpInside)
        button.layer.cornerRadius = 5
        
        return button
    }()
    let labelAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Hãy chọn đáp án"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        label.textColor = UIColor.colorNavigation()
        return label
    }()
    var dataQiz: Theme?
    // bộ câu hỏi
    var datas : [Question] {
        return dataQiz?.questions ?? [Question]()
    }
    
    // index câu hiện tại
    var currentIndexQuestion: Int = 0
    // câu hỏi hiện tại
    var currentQuestion: Question{
        return datas[currentIndexQuestion]
    }
    // tổng số câu hỏi
    var totalQuestion: Int = 1
    var heightBar: CGFloat!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavi()
        currentIndexQuestion = 0
        totalQuestion = datas.count
        configTableView()
        setupLayout()
        
        getQuestion(currentIndexQuestion)
        gesture()
        if totalQuestion > 1{
            submitButton.isHidden = true
        }
        // reset
        for item in self.datas{
            print("check for")
            for (_, i) in item.answers.enumerated(){
                if i.isSelected == true {
                    i.isSelected = false
                }
            }
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
        cancelButton.tintColor = .white
        navigationItem.leftBarButtonItem = cancelButton
        
    }
    @objc func cancelPress(){
        
        let secondVC = DetailTheme()
        let navigation = UINavigationController(rootViewController: secondVC)
        navigation.modalPresentationStyle = .fullScreen
        present(navigation, animated: true, completion: nil)
        
        secondVC.dataDetailTheme = dataQiz
    }
    func getQuestion(_ current: Int){
        questionLabel.text = "\(currentIndexQuestion + 1). \(datas[current].question)"
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
        view.addSubview(labelAnswer)
        labelAnswer.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10).isActive = true
        labelAnswer.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        labelAnswer.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        labelAnswer.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
        
        view.addSubview(submitButton)
        submitButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        submitButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2).isActive = true
        
        tableView.topAnchor.constraint(equalTo: labelAnswer.bottomAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: submitButton.topAnchor, constant: -20).isActive = true
    }
    
    func gesture(){
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeLeft))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeRight))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func swipeLeft(){
        if currentIndexQuestion != totalQuestion - 1 {
            nextAnswer()
          labelAnswer.text = "Hãy chọn đáp án"
        }
    }
    
    @objc func swipeRight(){
        if currentIndexQuestion > 0 {
            previousAnswer()
           labelAnswer.text = "Hãy chọn đáp án"
        }
    }
    func previousAnswer(){
        // mỗi lần back thì câu hỏi hiện tại trừ 1
        currentIndexQuestion -= 1
        
        if currentIndexQuestion <= 0 {
            currentIndexQuestion = 0
            labelAnswer.isHidden = true
        }
        getQuestion(currentIndexQuestion)
        tableView.reloadData()
    }
    func nextAnswer(){
        // mỗi lần next, giá trị câu hỏi hiện tại tăng lên 1
        currentIndexQuestion += 1
        
        // kiểm tra câu hỏi hiện tại, nếu lớn hơn tổng số câu
        if currentIndexQuestion == totalQuestion - 1 {
            currentIndexQuestion = totalQuestion - 1
          submitButton.isHidden = false
        }
        getQuestion(currentIndexQuestion)
        tableView.reloadData()
    }
    @objc func submitResult(){
        var point: Int = 0
        for item in datas{
            for (index, i) in item.answers.enumerated(){
                if i.isSelected == true && index + 1 == item.indexRightAnswer{
                    point += 1
                    i.isSelected = false
                }
            }
        }
        let resultVC = ResultViewController()
        resultVC.totalQuestion = totalQuestion
        resultVC.numberCorrect = point
        resultVC.dataReturn = dataQiz
        self.navigationItem.setHidesBackButton(true, animated:true)
        navigationController?.pushViewController(resultVC, animated: true)
    }
    
}
extension QuizQuestion: UITableViewDelegate, UITableViewDataSource{
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
        cell.selectionStyle = .gray
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexAnswer = datas[currentIndexQuestion].indexRightAnswer - 1
        for item in currentQuestion.answers{
            item.isSelected = false
        }

        currentQuestion.answers[indexPath.row].isSelected = true
        print(currentQuestion.answers[indexPath.row].answer)
        labelAnswer.isHidden = false
        if datas[currentIndexQuestion].answers[indexAnswer].answer == currentQuestion.answers[indexPath.row].answer {
            labelAnswer.text = """
            Đúng rồi! Đáp án đúng là
            \(datas[currentIndexQuestion].answers[indexAnswer].answer)
            """
        } else {
           labelAnswer.text = """
            Sai rồi! Đáp án đúng là
            \(datas[currentIndexQuestion].answers[indexAnswer].answer)
            """
        }
        tableView.reloadData()
    }
}