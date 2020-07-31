//
//  Modul.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation

struct Theme {
    var ID: Int
    var title: String = ""
    var ImageTheme: String = ""
    var meanTitle: String = ""
    var questions: [Question] = []
    var clickColect: [DetailThemefake] = []
    var isCheckTheme: Bool = false
}
struct DetailThemefake {
    var newWord: String = ""
    var wordMean: String = ""
    var exampleWord: String = ""
    var readConversion: String = ""
    var clickReview: Bool 

}
struct Question {
    let question: String
    // câu trả lời đúng
    let indexRightAnswer: Int
    var answers: [Answer]
    
}
class Answer {
    // đáp án
    var answer: String = ""
    // check đáp án này có được chọn không
    var isSelected: Bool = false
    
    init(answer: String, isSelected: Bool) {
        self.answer = answer
        self.isSelected = isSelected
    }
}
enum Time {
    case start
    case pause
}

//class DayRemind {
//    var isCheck: Bool = true
//    var time1 : String?
//    var text1 : String?
//    init(isCheck: Bool, time1: String, text1: String){
//        self.isCheck = isCheck
//        self.time1 = time1
//        self.text1 = text1
//    }
//}



