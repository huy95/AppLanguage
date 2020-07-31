////
////  datatestColection.swift
////  languageApp
////
////  Created by Huy on 7/24/20.
////  Copyright © 2020 Huy. All rights reserved.
////
//
//import Foundation
//// class cho ôn tập từ vựng
//func fakeDatasCollection() -> [Theme] {
////    let question1 = Question(questionText: "Abide by", options: ["tuân theo", "chinh xac", "hợp đồng", "đồng ý" ], correctAns: 1, wrongAns: -1, isAnswered: false)
////    let question2 = Question(questionText: "Agreement", options: ["tuân theo", "chinh xac", "hợp đồng", "dồng ý" ], correctAns: 2, wrongAns: -1, isAnswered: false)
////    let question3 = Question(questionText: "Assurance", options: ["sự chắc chắn", "chinh xac", "hợp đồng", "đồng ý" ], correctAns: 0, wrongAns: -1, isAnswered: false)
////    let question4 = Question(questionText: "cancellation", options: ["tuân theo", "chinh xac", "hợp đồng", "sự hủy bỏ" ], correctAns: 3, wrongAns: -1, isAnswered: false)
////    let question5 = Question(questionText: "determine", options: ["tuân theo", "chinh xac", "quyết định", "đồng ý" ], correctAns: 2, wrongAns: -1, isAnswered: false)
////    let question6 = Question(questionText: "determine", options: ["tuân theo", "chinh xac", "quyết định", "đồng ý" ], correctAns: 2, wrongAns: -1, isAnswered: false)
////    let question7 = Question(questionText: "establish", options: ["thiết lập", "chinh xac", "quyết định", "đồng ý" ], correctAns: 0, wrongAns: -1, isAnswered: false)
////    let question8 = Question(questionText: "engage ", options: ["tuân theo", "chinh xac", "quyết định", "tham gia" ], correctAns: 3, wrongAns: -1, isAnswered: false)
////    let question9 = Question(questionText: "obligate", options: ["tuân theo", "bắt buộc", "quyết định", "đồng ý" ], correctAns: 1, wrongAns: -1, isAnswered: false)
////    let question10 = Question(questionText: "party", options: ["tuân theo", "chinh xac", "quyết định", "bữa tiệc" ], correctAns: 3, wrongAns: -1, isAnswered: false)
////    let question11 = Question(questionText: "provision", options: ["tuân theo", "chinh xac", "điều khoản", "đồng ý" ], correctAns: 2, wrongAns: -1, isAnswered: false)
////    let question12 = Question(questionText: "resolve", options: ["tuân theo", "chinh xac", "quyết định", "Sự kiên quyết" ], correctAns: 3, wrongAns: -1, isAnswered: false)
////    let question13 = Question(questionText: "specific", options: ["đặc biệt", "chinh xac", "quyết định", "đồng ý" ], correctAns: 0, wrongAns: -1, isAnswered: false)
////
//    let detailTheme1 = DetailThemefake(newWord: "Abide by (n)", wordMean: "/ə'baid/", exampleWord: "The two parties agreed to abide by the judge's decision", readConversion: "hợp đồng, giao kèo", clickReview: false)
//
//    let detailTheme2 = DetailThemefake(newWord: "Agreement (n)", wordMean: "/ə'gri:mənt/", exampleWord: "According to the agreement, the caterer will also supply the flowers for the event", readConversion: "hợp đồng, giao kèo", clickReview: false)
//
//    let detailTheme3 = DetailThemefake(newWord: "determine (v)", wordMean: "/di'tə:min/", exampleWord: " After reading the contract, I was still unable to detemine if our company was liable for back wages.", readConversion: "quyết định, xác định", clickReview: false)
//
//    let detailTheme4 = DetailThemefake(newWord: "Agree (v)", wordMean: "/ə'gri:/", exampleWord: "I agree love you", readConversion: "đồng ý, tán thành", clickReview: false)
//
//    let detailTheme5 = DetailThemefake(newWord: "Assurance (n)", wordMean: "/ə'ʃuərəns/", exampleWord: "The sales associate gave his assurance that the missing keyboard would be replaced the next day.", readConversion: "sự chắc chắn", clickReview: false)
//
//    let detailTheme6 = DetailThemefake(newWord: "cancellation (n)", wordMean: "/,kænse'leiʃn/", exampleWord: " The cancelation of her flight caused her problems for the rest of the week", readConversion: "sự hủy bỏ, sự bãi bỏ", clickReview: false)
//
//    let detailTheme7 = DetailThemefake(newWord: "engage establish (v)", wordMean: "/in'geidʤ/", exampleWord: " He engaged us in a fascinating discussion about current business law", readConversion: "Tham gia,cam kết", clickReview: false)
//
//    let detailTheme8 = DetailThemefake(newWord: "establish (v)", wordMean: "/is'tæbliʃ/", exampleWord: "The merger of the two company established a powerful new corporation", readConversion: "thiết lập; xác minh", clickReview: false)
//
//    let detailTheme9 = DetailThemefake(newWord: "obligate (v)", wordMean: "/'ɔbligeit/", exampleWord: "The contractor was obligated by the contract to work 40 hours a week.", readConversion: "bắt buộc, ép buộc", clickReview: false)
//
//    let detailTheme10 = DetailThemefake(newWord: "party (n)", wordMean: "/'pɑ:ti/", exampleWord: "The parties agreed to settlement in their contract dispute.", readConversion: "buổi liên hoan, buổi tiệc", clickReview: false)
//    let detailTheme11 = DetailThemefake(newWord: "provision (n)", wordMean: "/provision/", exampleWord: "The father made provision for his children through his will.", readConversion: "sự dự trữ; điều khoản", clickReview: false)
//    let detailTheme12 = DetailThemefake(newWord: "resolve (n)", wordMean: "/ri'zɔlv/", exampleWord: "The manager resolved to clean out all the files at the end of the week.", readConversion: "sự kiên quyết", clickReview: false)
//    let detailTheme13 = DetailThemefake(newWord: "specific (adj)", wordMean: "/spi'sifik/", exampleWord: " The customer's specific complaint was not addressed in his e-mail", readConversion: "riêng biệt,đặc trưng", clickReview: false)
//
//    let themes1 = Theme(title: "Contracts", ImageTheme : "Contracts.jpg", questions: [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13], clickColect: [detailTheme1, detailTheme2, detailTheme3, detailTheme4, detailTheme5, detailTheme6, detailTheme7, detailTheme8, detailTheme9, detailTheme10, detailTheme11, detailTheme12, detailTheme13] )
//
//
//    let detailTheme21 = DetailThemefake(newWord: "attract (v)", wordMean: "/ə'trækt/", exampleWord: "The two parties agreed to abide by the judge's decision", readConversion: "hấp dẫn, lôi cuốn, thu hút", clickReview: false)
//
//    let detailTheme22 = DetailThemefake(newWord: "compare (n)", wordMean: "/kəm'peə/", exampleWord: "Once the customer compared the two products, her choice was easy.", readConversion: " so sánh, đối chiếu", clickReview: false)
//
//    let detailTheme23 = DetailThemefake(newWord: "consume (v)", wordMean: "/kən'vins/", exampleWord: " The printer consumes more toner than the downstairs printer.", readConversion: "tiêu thụ, tiêu dùng", clickReview: false)
//
//    let detailTheme24 = DetailThemefake(newWord: "currently (adv)", wordMean: "/ˈkʌrəntli/", exampleWord: "hiện thời, hiện nay, lúc này", readConversion: "đồng ý, tán thành", clickReview: false)
//
//    let detailTheme25 = DetailThemefake(newWord: "Assurance (n)", wordMean: "/ə'ʃuərəns/", exampleWord: "The sales associate gave his assurance that the missing keyboard would be replaced the next day.", readConversion: "sự chắc chắn", clickReview: false)
//
//    let detailTheme26 = DetailThemefake(newWord: "cancellation (n)", wordMean: "/,kænse'leiʃn/", exampleWord: " The cancelation of her flight caused her problems for the rest of the week", readConversion: "sự hủy bỏ, sự bãi bỏ", clickReview: false)
//
//    let detailTheme27 = DetailThemefake(newWord: "engage establish (v)", wordMean: "/in'geidʤ/", exampleWord: " He engaged us in a fascinating discussion about current business law", readConversion: "Tham gia,cam kết", clickReview: false)
//
//    let detailTheme28 = DetailThemefake(newWord: "establish (v)", wordMean: "/is'tæbliʃ/", exampleWord: "The merger of the two company established a powerful new corporation", readConversion: "thiết lập; xác minh", clickReview: false)
//
//    let detailTheme29 = DetailThemefake(newWord: "obligate (v)", wordMean: "/'ɔbligeit/", exampleWord: "The contractor was obligated by the contract to work 40 hours a week.", readConversion: "bắt buộc, ép buộc", clickReview: false)
//
//    let detailTheme210 = DetailThemefake(newWord: "party (n)", wordMean: "/'pɑ:ti/", exampleWord: "The parties agreed to settlement in their contract dispute.", readConversion: "buổi liên hoan, buổi tiệc", clickReview: false)
//    let detailTheme211 = DetailThemefake(newWord: "provision (n)", wordMean: "/provision/", exampleWord: "The father made provision for his children through his will.", readConversion: "sự dự trữ; điều khoản", clickReview: false)
//    let detailTheme212 = DetailThemefake(newWord: "resolve (n)", wordMean: "/ri'zɔlv/", exampleWord: "The manager resolved to clean out all the files at the end of the week.", readConversion: "sự kiên quyết", clickReview: false)
//    let detailTheme213 = DetailThemefake(newWord: "specific (adj)", wordMean: "/spi'sifik/", exampleWord: " The customer's specific complaint was not addressed in his e-mail", readConversion: "riêng biệt,đặc trưng", clickReview: false)
//
//
//    let themes2 = Theme(title: "Marketing", ImageTheme: "Marketing.jpg", question: [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12, question13], clickColect: [detailTheme21, detailTheme22, detailTheme23, detailTheme24, detailTheme25, detailTheme26, detailTheme27, detailTheme28, detailTheme29, detailTheme210, detailTheme211, detailTheme212, detailTheme213] )
//    let themes3 = Theme(title: "Warranties", ImageTheme: "Warranties.jpg")
//    let themes4 = Theme(title: "Business planning", ImageTheme: "Businessplanning.jpg")
//    let themes5 = Theme(title: "Conferences", ImageTheme: "Conferences.jpg")
//    let themes6 = Theme(title: "Computers", ImageTheme: "Computers.jpg")
//    let themes7 = Theme(title: "Office Technology", ImageTheme: "OfficeTechnology.jpg")
//    let themes8 = Theme(title: "Office Procedures", ImageTheme: "OfficeProcedures.jpg")
//    let themes9 = Theme(title: "Electronics", ImageTheme: "Electronics.jpg")
//    let themes10 = Theme(title: "Correspondence", ImageTheme: "Correspondence.jpg")
//    let themes11 = Theme(title: "Applying and Interviewing", ImageTheme: "Contracts.jpg")
//    let themes12 = Theme(title: "Pharmacy", ImageTheme: "Pharmacy.jpg")
//    let themes13 = Theme(title: "Hospitals", ImageTheme: "Pharmacy.jpg")
//    let themes14 = Theme(title: "Media", ImageTheme: "Media.jpg")
//    let themes15 = Theme(title: "Museums", ImageTheme: "Museums.jpg")
//    let themes16 = Theme(title: "Music", ImageTheme: "Music.jpg")
//    let themes17 = Theme(title: "Theater", ImageTheme: "Theater.jpg")
//    let themes18 = Theme(title: "Trains", ImageTheme: "Trains.jpg")
//    let themes19 = Theme(title: "Airlines", ImageTheme: "Airlines.jpg")
//    let themes20 = Theme(title: "Events", ImageTheme: "Events.jpg")
//    let themes21 = Theme(title: "Eating out", ImageTheme: "Contracts.jpg")
//    let themes22 = Theme(title: "Taxes", ImageTheme: "Eating.jpg")
//    let themes23 = Theme(title: "Investments", ImageTheme: "Investments.jpg")
//    let themes24 = Theme(title: "Accounting", ImageTheme: "Accounting.jpg")
//    let themes25 = Theme(title: "Invoices", ImageTheme: "Invoices.jpg")
//    let themes = [themes1, themes2, themes3, themes4, themes5, themes6, themes7, themes8, themes9, themes10, themes11, themes12, themes13, themes14, themes15, themes16, themes17, themes18, themes19, themes20, themes21, themes22, themes23, themes24, themes25]
//    return themes
//}
//
////
