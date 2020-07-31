//
//  details.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
// class cho ôn tập từ vựng
func fakeDatas() -> [Theme] {
    // tạo câu hỏi
    let question1 = Question(question: "Nghĩa phổ biến của : Cancellation?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(n): sự bãi bỏ, hủy bỏ", isSelected: false),
                                       Answer(answer: "(n)sự hứa hẹn, hứa hôn", isSelected: false),
                                       Answer(answer: "(v): quyết định, xác định", isSelected: false),
                                       Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme1 = DetailThemefake(newWord: "Abide by", wordMean: "/ə'baid/", exampleWord: "Từ loại: (v): tôn trọng, tuân theo, giữ (lời)", readConversion: "Giải thích: to accept and act according to a law, an agreement", clickReview: false)
    
    let question2 = Question(question: "Nghĩa phổ biến của : Abide by?",
                             indexRightAnswer: 2,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ, dự phòng", isSelected: false)])
    let detailTheme2 = DetailThemefake(newWord: "Agreement", wordMean: "/ə'gri:mənt/", exampleWord: "Từ loại: (n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", readConversion: "Giải thích: an arrangement, a promise or a contract made with somebody", clickReview: false)
    let question3 = Question(question: "Nghĩa phổ biến của : Determine?",
                             indexRightAnswer: 2,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(v): quyết định, xác định, định rõ; quyết tâm, kiên quyết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ, dự phòng", isSelected: false)])
    let detailTheme3 = DetailThemefake(newWord: "Determine", wordMean: "/di'tə:min/", exampleWord: " Từ loại: (v): quyết định, xác định, định rõ; quyết tâm, kiên quyết", readConversion: "Giải thích: to discover the facts about something", clickReview: false)
    let question4 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme4 = DetailThemefake(newWord: "Engage", wordMean: "/in'geidʤ/", exampleWord: "Từ loại: (v)Tham gia, cam kết, (n)sự hứa hẹn, hứa hôn", readConversion: "Giải thích: to become involved in, to participate", clickReview: false)
    let question5 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme5 = DetailThemefake(newWord: "Assurance", wordMean: "/ə'ʃuərəns/", exampleWord: "Từ loại: (n): sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", readConversion: "Giải thích: a statement that something will certainly be true or will certainly happen", clickReview: false)
    let question6 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme6 = DetailThemefake(newWord: "Cancellation", wordMean: "/,kænse'leiʃn/", exampleWord: "Từ loại: (n): sự bãi bỏ, hủy bỏ", readConversion: "Giải thích: a decision to stop something that has already been arranged from happening", clickReview: false)
    let question7 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme7 = DetailThemefake(newWord: "Establish", wordMean: "/is'tæbliʃ/", exampleWord: "Từ loại: (v): thiết lập, thành lập; xác minh, chứng minh, củng cố", readConversion: "Giải thích: to start or create an organization, a system", clickReview: false)
    let question8 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme8 = DetailThemefake(newWord: "specific", wordMean: "/spi'sifik/", exampleWord: "Từ loại: (adj): riêng biệt, cụ thể, đặc trưng; rõ ràng, rành mạch", readConversion: "Giải thích: detailed abd exact", clickReview: false)
    let question9 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
     let detailTheme9 = DetailThemefake(newWord: "Obligate", wordMean: "/'ɔbligeit/", exampleWord: "Từ loại: (v): bắt buộc, ép buộc", readConversion: "Giải thích: to bind legally or morally", clickReview: false)
    let question10 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme10 = DetailThemefake(newWord: "party", wordMean: "/'pɑ:ti/", exampleWord: "Từ loại: (n): đảng, phái, đội, nhóm; người tham dự/tham gia; buổi liên hoan, buổi tiệc.", readConversion: "Giải thích: one of the people or groups of people involved in a legal agreemen", clickReview: false)
    let question11 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme11 = DetailThemefake(newWord: "provision", wordMean: "/provision/", exampleWord: "Từ loại: (n): sự dự liệu, dự trữ, dự phòng, cung cấp; điều khoản", readConversion: "Giải thích: a condition or an arrangement in a legal document", clickReview: false)
    let question12 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme12 = DetailThemefake(newWord: "resolve (n)", wordMean: "/ri'zɔlv/", exampleWord: "The manager resolved to clean out all the files at the end of the week.", readConversion: "sự kiên quyết", clickReview: false)
    
    let themes1 = Theme(ID: 1, title: "Contracts", ImageTheme : "Contracts.jpg",meanTitle: "Hợp Đồng", questions: [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12], clickColect: [detailTheme1, detailTheme2, detailTheme3, detailTheme4, detailTheme5, detailTheme6, detailTheme7, detailTheme8, detailTheme9, detailTheme10, detailTheme11, detailTheme12], isCheckTheme: false )
    
    //2
    let question13 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme13 = DetailThemefake(newWord: "attract (v)", wordMean: "/ə'trækt/", exampleWord: "The two parties agreed to abide by the judge's decision", readConversion: "hấp dẫn, lôi cuốn, thu hút", clickReview: false)
      
     
    let question14 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme14 = DetailThemefake(newWord: "compare (n)", wordMean: "/kəm'peə/", exampleWord: "Once the customer compared the two products, her choice was easy.", readConversion: " so sánh, đối chiếu", clickReview: false)
         
       
    let question15 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme15 = DetailThemefake(newWord: "consume (v)", wordMean: "/kən'vins/", exampleWord: " The printer consumes more toner than the downstairs printer.", readConversion: "tiêu thụ, tiêu dùng", clickReview: false)
           
          
    let question16 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
     let detailTheme16 = DetailThemefake(newWord: "currently (adv)", wordMean: "/ˈkʌrəntli/", exampleWord: "hiện thời, hiện nay, lúc này", readConversion: "đồng ý, tán thành", clickReview: false)
    let question17 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme17 = DetailThemefake(newWord: "Assurance (n)", wordMean: "/ə'ʃuərəns/", exampleWord: "The sales associate gave his assurance that the missing keyboard would be replaced the next day.", readConversion: "sự chắc chắn", clickReview: false)
       
       
    let question18 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme18 = DetailThemefake(newWord: "cancellation (n)", wordMean: "/,kænse'leiʃn/", exampleWord: " The cancelation of her flight caused her problems for the rest of the week", readConversion: "sự hủy bỏ, sự bãi bỏ", clickReview: false)
    
    
    let question19 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme19 = DetailThemefake(newWord: "engage establish (v)", wordMean: "/in'geidʤ/", exampleWord: " He engaged us in a fascinating discussion about current business law", readConversion: "Tham gia,cam kết", clickReview: false)
    
    
    let question20 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    
    let detailTheme20 = DetailThemefake(newWord: "establish (v)", wordMean: "/is'tæbliʃ/", exampleWord: "The merger of the two company established a powerful new corporation", readConversion: "thiết lập; xác minh", clickReview: false)
    
    
    let question21 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme21 = DetailThemefake(newWord: "obligate (v)", wordMean: "/'ɔbligeit/", exampleWord: "The contractor was obligated by the contract to work 40 hours a week.", readConversion: "bắt buộc, ép buộc", clickReview: false)
    
 
    let question22 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme22 = DetailThemefake(newWord: "party (n)", wordMean: "/'pɑ:ti/", exampleWord: "The parties agreed to settlement in their contract dispute.", readConversion: "buổi liên hoan, buổi tiệc", clickReview: false)
    
    let question23 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
     let detailTheme23 = DetailThemefake(newWord: "provision (n)", wordMean: "/provision/", exampleWord: "The father made provision for his children through his will.", readConversion: "sự dự trữ; điều khoản", clickReview: false)
    let question24 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
     let detailTheme24 = DetailThemefake(newWord: "resolve (n)", wordMean: "/ri'zɔlv/", exampleWord: "The manager resolved to clean out all the files at the end of the week.", readConversion: "sự kiên quyết", clickReview: false)
    let question25 = Question(question: "Nghĩa phổ biến của : Agreement?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "(n): sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v): tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    
    let detailTheme25 = DetailThemefake(newWord: "specific (adj)", wordMean: "/spi'sifik/", exampleWord: " The customer's specific complaint was not addressed in his e-mail", readConversion: "riêng biệt,đặc trưng", clickReview: false)
    
    
    let themes2 = Theme(ID: 2,title: "Marketing",ImageTheme: "Marketing.jpg", meanTitle: "kế toán", questions: [question13, question14, question15, question16, question17, question18, question19, question20, question21, question22, question23, question24, question25], clickColect: [detailTheme13, detailTheme14, detailTheme15, detailTheme16, detailTheme17, detailTheme18, detailTheme19, detailTheme20, detailTheme21, detailTheme22, detailTheme23, detailTheme24, detailTheme25], isCheckTheme: false )
    
    // cac chu de ngon ngu
    let themes3 = Theme(ID: 3,title: "Warranties", ImageTheme: "Warranties.jpg", meanTitle: "Bảo hành", isCheckTheme: false)
    let themes4 = Theme(ID: 4,title: "Business planning", ImageTheme: "Businessplanning.jpg", meanTitle: "Kế hoạch kinh doanh", isCheckTheme: false)
    let themes5 = Theme(ID: 5,title: "Conferences", ImageTheme: "Conferences.jpg", meanTitle: "Hội nghị", isCheckTheme: false)
    let themes6 = Theme(ID: 6,title: "Computers", ImageTheme: "Computers.jpg", meanTitle: "Máy vi tính", isCheckTheme: false)
    let themes7 = Theme(ID: 7,title: "Office Technology", ImageTheme: "OfficeTechnology.jpg", meanTitle: "Công Nghệ Cho Công Sở", isCheckTheme: false)
    let themes8 = Theme(ID: 8,title: "Office Procedures", ImageTheme: "OfficeProcedures.jpg", meanTitle: "Thủ tục văn phòng", isCheckTheme: false)
    let themes9 = Theme(ID: 9,title: "Electronics", ImageTheme: "Electronics.jpg", meanTitle: "Thiết bị điện tử", isCheckTheme: false)
    let themes10 = Theme(ID: 10,title: "Correspondence", ImageTheme: "Correspondence.jpg", meanTitle: "Thư tín", isCheckTheme: false)
    let themes11 = Theme(ID: 11,title: "Applying and Interviewing", ImageTheme: "Contracts.jpg", meanTitle: "Áp dụng và phỏng vấn", isCheckTheme: false)
    let themes12 = Theme(ID: 12,title: "Pharmacy", ImageTheme: "Pharmacy.jpg", meanTitle: "Tiệm thuốc", isCheckTheme: false)
    let themes13 = Theme(ID: 13,title: "Hospitals", ImageTheme: "Pharmacy.jpg", meanTitle: "Bệnh viện", isCheckTheme: false)
    let themes14 = Theme(ID: 14,title: "Media", ImageTheme: "Media.jpg", meanTitle: "Phương tiện truyền thông", isCheckTheme: false)
    let themes15 = Theme(ID: 15,title: "Museums", ImageTheme: "Museums.jpg", meanTitle: "Bảo tàng", isCheckTheme: false)
    let themes16 = Theme(ID: 16,title: "Music", ImageTheme: "Music.jpg", meanTitle: "Âm nhạc", isCheckTheme: false)
    let themes17 = Theme(ID: 17,title: "Theater", ImageTheme: "Theater.jpg", meanTitle: "Rạp hát", isCheckTheme: false)
    let themes18 = Theme(ID: 18,title: "Trains", ImageTheme: "Trains.jpg", meanTitle: "Xe lửa", isCheckTheme: false)
    let themes19 = Theme(ID: 19,title: "Airlines", ImageTheme: "Airlines.jpg", meanTitle: "Hãng hàng không", isCheckTheme: false)
    let themes20 = Theme(ID: 21,title: "Events", ImageTheme: "Events.jpg", meanTitle: "Sự kiện", isCheckTheme: false)
    let themes21 = Theme(ID: 22,title: "Apply and Interviewing", ImageTheme: "Contracts.jpg", meanTitle: "Ứng Tuyển và Phỏng Vấn", isCheckTheme: false)
    let themes22 = Theme(ID: 23,title: "Taxes", ImageTheme: "Eating.jpg", meanTitle: "Thuế", isCheckTheme: false)
    let themes23 = Theme(ID: 24,title: "Investments", ImageTheme: "Investments.jpg", meanTitle: "Đầu tư", isCheckTheme: false)
    let themes24 = Theme(ID: 25,title: "Accounting", ImageTheme: "Accounting.jpg", meanTitle: "Kế toán", isCheckTheme: false)
    let themes25 = Theme(ID: 26,title: "Invoices", ImageTheme: "Invoices.jpg", meanTitle: "Hóa đơn", isCheckTheme: false)
    let themes = [themes1, themes2, themes3, themes4, themes5, themes6, themes7, themes8, themes9, themes10, themes11, themes12, themes13, themes14, themes15, themes16, themes17, themes18, themes19, themes20, themes21, themes22, themes23, themes24, themes25]
    return themes
}

//
