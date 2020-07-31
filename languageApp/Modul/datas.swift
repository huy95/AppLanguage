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
    let question1 = Question(question: "Nghĩa phổ biến của : Abide by?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(n)sự bãi bỏ, hủy bỏ", isSelected: false),
                                       Answer(answer: "B.(n)sự hứa hẹn, hứa hôn", isSelected: false),
                                       Answer(answer: "C.(v)quyết định, xác định", isSelected: false),
                                       Answer(answer: "D.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme1 = DetailThemefake(newWord: "Abide by", wordMean: "/ə'baid/", exampleWord: "Từ loại: (v) tôn trọng, tuân theo, giữ (lời)", readConversion: "Giải thích: to accept and act according to a law, an agreement", clickReview: false, ImageDetail: "Accounting", audio: "abide_by.mp3")
    
    let question2 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme2 = DetailThemefake(newWord: "Agreement", wordMean: "/ə'gri:mənt/", exampleWord: "Từ loại: (n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", readConversion: "Giải thích: an arrangement, a promise or a contract made with somebody", clickReview: false, ImageDetail: "Trains", audio:"agreement.mp3")
    let question3 = Question(question: "Nghĩa phổ biến của : Determine?",
                             indexRightAnswer: 3,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(v)quyết định, xác định, định rõ; quyết tâm, kiên quyết", isSelected: false),
                                       Answer(answer: "D.(n)sự dự liệu, dự trữ, dự phòng", isSelected: false)])
    let detailTheme3 = DetailThemefake(newWord: "Determine", wordMean: "/di'tə:min/", exampleWord: " Từ loại: (v): quyết định, xác định, định rõ; quyết tâm, kiên quyết", readConversion: "Giải thích: to discover the facts about something", clickReview: false, ImageDetail: "Taxes", audio:"determine.mp3")
    let question4 = Question(question: "Nghĩa phổ biến của : Engage?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(v)Tham gia, cam kết, (n)sự hứa hẹn, hứa hôn", isSelected: false)])
    let detailTheme4 = DetailThemefake(newWord: "Engage", wordMean: "/in'geidʤ/", exampleWord: "Từ loại: (v)Tham gia, cam kết, (n)sự hứa hẹn, hứa hôn", readConversion: "Giải thích: to become involved in, to participate", clickReview: false, ImageDetail: "Events", audio:"engage.mp3")
    let question5 = Question(question: "Nghĩa phổ biến của : Assurance?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", isSelected: false)])
    let detailTheme5 = DetailThemefake(newWord: "Assurance", wordMean: "/ə'ʃuərəns/", exampleWord: "Từ loại: (n)sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", readConversion: "Giải thích: a statement that something will certainly be true or will certainly happen", clickReview: false, ImageDetail: "Hospitals", audio:"assurance.mp3")
    let question6 = Question(question: "Nghĩa phổ biến của : Cancellation?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", isSelected: false),
                                       Answer(answer: "D.(n)sự bãi bỏ, hủy bỏ", isSelected: false)])
    let detailTheme6 = DetailThemefake(newWord: "Cancellation", wordMean: "/,kænse'leiʃn/", exampleWord: "Từ loại: (n) sự bãi bỏ, hủy bỏ", readConversion: "Giải thích: a decision to stop something that has already been arranged from happening", clickReview: false, ImageDetail: "Theater", audio:"cancellation.mp3")
    let question7 = Question(question: "Nghĩa phổ biến của : Establish?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự bãi bỏ, hủy bỏ", isSelected: false),
                                       Answer(answer: "D.(v)thiết lập, thành lập; xác minh, chứng minh, củng cố", isSelected: false)])
    let detailTheme7 = DetailThemefake(newWord: "Establish", wordMean: "/is'tæbliʃ/", exampleWord: "Từ loại: (v)thiết lập, thành lập; xác minh, chứng minh, củng cố", readConversion: "Giải thích: to start or create an organization, a system", clickReview: false, ImageDetail: "Computers", audio:"establish.mp3")
    let question8 = Question(question: "Nghĩa phổ biến của : Specific?",
                             indexRightAnswer: 2,
                             answers: [Answer(answer: "A.(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(adj)riêng biệt, cụ thể, đặc trưng; rõ ràng, rành mạch", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v)", isSelected: false)])
    let detailTheme8 = DetailThemefake(newWord: "Specific", wordMean: "/spi'sifik/", exampleWord: "Từ loại: (adj)riêng biệt, cụ thể, đặc trưng; rõ ràng, rành mạch", readConversion: "Giải thích: detailed abd exact", clickReview: false, ImageDetail: "Pharmacy", audio:"specific.mp3")
    let question9 = Question(question: "Nghĩa phổ biến của : Obligate?",
                             indexRightAnswer: 3,
                             answers: [Answer(answer: "A.(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(v)bắt buộc, ép buộc", isSelected: false),
                                       Answer(answer: "D.(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
     let detailTheme9 = DetailThemefake(newWord: "Obligate", wordMean: "/'ɔbligeit/", exampleWord: "Từ loại: (v): bắt buộc, ép buộc", readConversion: "Giải thích: to bind legally or morally", clickReview: false, ImageDetail: "Music", audio:"obligate.mp3")
    let question10 = Question(question: "Nghĩa phổ biến của : party?",
                              indexRightAnswer: 3,
                              answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)đảng, phái, đội, nhóm; người tham dự/tham gia; buổi liên hoan", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme10 = DetailThemefake(newWord: "party", wordMean: "/'pɑ:ti/", exampleWord: "Từ loại: (n): đảng, phái, đội, nhóm; người tham dự/tham gia; buổi liên hoan, buổi tiệc.", readConversion: "Giải thích: one of the people or groups of people involved in a legal agreemen", clickReview: false, ImageDetail: "Contracts", audio:"party.mp3")
    let question11 = Question(question: "Nghĩa phổ biến của : provision?",
                              indexRightAnswer: 1,
                              answers: [Answer(answer: "A.(n)sự dự liệu, dự trữ, dự phòng, cung cấp; điều khoản", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau ", isSelected: false)])
    let detailTheme11 = DetailThemefake(newWord: "provision", wordMean: "/provision/", exampleWord: "Từ loại: (n)sự dự liệu, dự trữ, dự phòng, cung cấp; điều khoản", readConversion: "Giải thích: a condition or an arrangement in a legal document", clickReview: false, ImageDetail: "Correspondence", audio:"provision.mp3")
    let question12 = Question(question: "Nghĩa phổ biến của : resolve?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme12 = DetailThemefake(newWord: "resolve (n)", wordMean: "/ri'zɔlv/", exampleWord: "Từ loại:(v) giải quyết, (n) sự kiên quyết / sự tin chắc", readConversion: "Giải thích: to find an acceptable solution to a problem", clickReview: false, ImageDetail: "Business planning", audio:"resolve.mp3")
    
    let themes1 = Theme(ID: 1, title: "Contracts", ImageTheme : "Contracts.jpg",meanTitle: "Hợp Đồng", questions: [question1, question2, question3, question4, question5, question6, question7, question8, question9, question10, question11, question12], clickColect: [detailTheme1, detailTheme2, detailTheme3, detailTheme4, detailTheme5, detailTheme6, detailTheme7, detailTheme8, detailTheme9, detailTheme10, detailTheme11, detailTheme12], isCheckTheme: false )
    
    //2
    let question13 = Question(question: "Nghĩa phổ biến của : Abide by?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(n)sự bãi bỏ, hủy bỏ", isSelected: false),
                                       Answer(answer: "B.(n)sự hứa hẹn, hứa hôn", isSelected: false),
                                       Answer(answer: "C.(v)quyết định, xác định", isSelected: false),
                                       Answer(answer: "D.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false)])
    let detailTheme13 = DetailThemefake(newWord: "attract", wordMean: "/ə'trækt/", exampleWord: "Từ loại:(v) hấp dẫn, lôi cuốn, thu hút", readConversion: "Giải thích: to draw by appeal", clickReview: false)
    
    let question14 = Question(question: "Nghĩa phổ biến của : Agreement?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme14 = DetailThemefake(newWord: "compare", wordMean: " /kəm'peə/", exampleWord: "Từ loại: (v)so sánh, đối chiếu", readConversion: "Giải thích: to examine people or things to see how they are similar and how they are different", clickReview: false)
   
    let question15 = Question(question: "Nghĩa phổ biến của : Engage?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(v)Tham gia, cam kết, (n)sự hứa hẹn, hứa hôn", isSelected: false)])
    let detailTheme15 = DetailThemefake(newWord: "competition", wordMean: "/,kɔmpi'tiʃn/", exampleWord: "Từ loại: (v)‹sự/cuộc› cạnh tranh, tranh giành, thi đấu", readConversion: "Giải thích: a situation in which people or organizations compete with each other for something that not everyone can have", clickReview: false)
    let question16 = Question(question: "Nghĩa phổ biến của : consume?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n): sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", isSelected: false)])
    let detailTheme16 = DetailThemefake(newWord: "consume", wordMean: "/kən'sju:m/", exampleWord: "Từ loại: (v)tiêu thụ, tiêu dùng", readConversion: "Giải thích: to use something, especially fuel, engery or time", clickReview: false)
    let question17 = Question(question: "Nghĩa phổ biến của : convince?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin", isSelected: false),
                                       Answer(answer: "D.(n)sự bãi bỏ, hủy bỏ", isSelected: false)])
    let detailTheme17 = DetailThemefake(newWord: "convince", wordMean: "/kən'vins/", exampleWord: "Từ loại: (v)Thuyết phục", readConversion: "Giải thích: to make somebody / yourselft believe that something is true", clickReview: false)
    let question18 = Question(question: "Nghĩa phổ biến của : Establish?",
                             indexRightAnswer: 4,
                             answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(n)sự bãi bỏ, hủy bỏ", isSelected: false),
                                       Answer(answer: "D.(v)thiết lập, thành lập; xác minh, chứng minh, củng cố", isSelected: false)])
    let detailTheme18 = DetailThemefake(newWord: "currently", wordMean: "/kən'vins/", exampleWord: "Từ loại: (v)Thuyết phục", readConversion: "Giải thích: to make somebody / yourselft believe that something is true", clickReview: false)
    let question19 = Question(question: "Nghĩa phổ biến của : Specific?",
                             indexRightAnswer: 2,
                             answers: [Answer(answer: "A.(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(adj)riêng biệt, cụ thể, đặc trưng; rõ ràng, rành mạch", isSelected: false),
                                       Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                       Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau (v)", isSelected: false)])
    let detailTheme19 = DetailThemefake(newWord: "fad", wordMean: "/spi'sifik/", exampleWord: "Từ loại: (n): mốt nhất thời, sự thích thú tạm thời; dở hơi, gàn dở", readConversion: "Giải thích: at the present time", clickReview: false)
    let question20 = Question(question: "Nghĩa phổ biến của : Obligate?",
                             indexRightAnswer: 3,
                             answers: [Answer(answer: "A.(v): tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                       Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                       Answer(answer: "C.(v)bắt buộc, ép buộc", isSelected: false),
                                       Answer(answer: "D.(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
     let detailTheme20 = DetailThemefake(newWord: "inspiration", wordMean: "/,inspə'reiʃn/", exampleWord: "Từ loại: (n)‹sự/người/vật› truyền cảm hứng, gây cảm hứng", readConversion: "Giải thích: a thing or person that arouses a feeling", clickReview: false)
    let question21 = Question(question: "Nghĩa phổ biến của : party?",
                              indexRightAnswer: 3,
                              answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)đảng, phái, đội, nhóm; người tham dự/tham gia; buổi liên hoan", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme21 = DetailThemefake(newWord: "market", wordMean: "/'mɑ:kit/", exampleWord: "Từ loại: (v): thị trường, chợ, nơi mua bán sản phẩm...", readConversion: "Giải thích: to advertise and offer a product for sale", clickReview: false)
    
    let question22 = Question(question: "Nghĩa phổ biến của : provision?",
                              indexRightAnswer: 1,
                              answers: [Answer(answer: "A.(n)sự dự liệu, dự trữ, dự phòng, cung cấp; điều khoản", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau ", isSelected: false)])
    let detailTheme22 = DetailThemefake(newWord: "persuasion", wordMean: "/pə'sweiʤn/", exampleWord: "Từ loại: (n)‹sự› thuyết phục, làm cho tin (chú ý: persuade > convince)", readConversion: "Giải thích: the power to influence, a deep conviction or belief.", clickReview: false)
    let question23 = Question(question: "Nghĩa phổ biến của : resolve?",
                              indexRightAnswer: 4,
                              answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                        Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                        Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                        Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
    let detailTheme23 = DetailThemefake(newWord: "productive", wordMean: "/prəˈdʌktɪv/", exampleWord: "Từ loại: (adj): sản xuất, sinh sản; sinh lợi nhiều, có hiệu quả", readConversion: "Giải thích: making goods or growing crops.", clickReview: false)
    let question24 = Question(question: "Nghĩa phổ biến của : resolve?",
                                 indexRightAnswer: 4,
                                 answers: [Answer(answer: "A.(v)tôn trọng, tuân theo, giữ (lời)", isSelected: false),
                                           Answer(answer: "B.(v)Tham gia, cam kết", isSelected: false),
                                           Answer(answer: "C.(n)sự dự liệu, dự trữ,", isSelected: false),
                                           Answer(answer: "D.(n)hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau", isSelected: false)])
       let detailTheme24 = DetailThemefake(newWord: "satisfaction", wordMean: "/prəˈdʌktɪv/", exampleWord: "Từ loại: (n): sự làm thỏa mãn, sự hài lòng", readConversion: "Giải thích: the good feeling that you have when you have achieved something", clickReview: false)
    
    let themes2 = Theme(ID: 2,title: "Marketing",ImageTheme: "Marketing.jpg", meanTitle: "kế toán", questions: [question13, question14, question15, question16, question17, question18, question19, question20, question21, question22, question23, question24], clickColect: [detailTheme13, detailTheme14, detailTheme15, detailTheme16, detailTheme17, detailTheme18, detailTheme19, detailTheme20, detailTheme21, detailTheme22, detailTheme23, detailTheme24], isCheckTheme: false )
    
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
