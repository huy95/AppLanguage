//
//  DetailTableView.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
import AVFoundation
class DetailTableView: UITableViewCell {
    var soundPlayer: AVAudioPlayer?
    var dataTable: DetailThemefake? {
            didSet {
                if let dataTable = dataTable {
                    label1.text = dataTable.newWord
                    label11.text = dataTable.wordMean
                    label2.text = dataTable.readConversion
                    label3.text = dataTable.exampleWord
                    imageCheck.image = UIImage(named: dataTable.ImageDetail)
                    test = dataTable.audio
                }
            }
        }
//     var passAction: (() -> Void)?
    var containView: UIView = {
        let containView = UIView()
        containView.translatesAutoresizingMaskIntoConstraints = false
        containView.backgroundColor = .white
        return containView
    }()
    var stackView1 : UIStackView = {
        let stackView1 = UIStackView()
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.axis = .vertical
        stackView1.alignment = .leading
        stackView1.distribution = .equalSpacing
        stackView1.spacing = 5
        return stackView1
    }()
    var stackView2 : UIStackView = {
        let stackView2 = UIStackView()
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.axis = .horizontal
        stackView2.alignment = .fill
        stackView2.distribution = .fillEqually
        stackView2.spacing = 10
        return stackView2
    }()
    var label1 : UILabel = {
        let label1 = UILabel()
        label1.text = "check"
        label1.font = .systemFont(ofSize: 16)
        label1.textColor = UIColor.init(red: 0, green: 95/255, blue: 208/255, alpha: 1)
        return label1
    }()
    var label11 : UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "/test/"
        label1.font = .systemFont(ofSize: 12)
        label1.textColor = UIColor.red
        return label1
    }()
    var label2 : UILabel = {
        let label1 = UILabel()
         label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "dong 2"
        label1.numberOfLines = 0
        label1.font = .systemFont(ofSize: 13)
        label1.textColor = UIColor.black
        return label1
    }()
    var label3 : UILabel = {
        let label1 = UILabel()
         label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "dong 3"
        label1.numberOfLines = 0
        label1.font = .systemFont(ofSize: 14)
        label1.textColor = UIColor.brown
        return label1
    }()
    var imageCheck : UIImageView = {
       let imageCheck = UIImageView()
         imageCheck.translatesAutoresizingMaskIntoConstraints = false
        imageCheck.contentMode = .scaleAspectFit
        return imageCheck
    }()
    var check : String? = ""
//    var buttonAudio : UIButton = {
//        let buttonAudio = UIButton()
//         buttonAudio.translatesAutoresizingMaskIntoConstraints = false
//        buttonAudio.setImage(UIImage(named: "audioIcon"), for: .normal)
//        buttonAudio.addTarget(self, action: #selector(playaudio), for: .touchUpInside)
//        buttonAudio.backgroundColor = .red
//        return buttonAudio
//    }()
    var buttonAudio : UIImageView = {
            let buttonAudio = UIImageView()
             buttonAudio.translatesAutoresizingMaskIntoConstraints = false
        buttonAudio.image = UIImage(named: "audioIcon")
            return buttonAudio
        }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    var test: String?
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupLayout()
        self.backgroundColor = UIColor.init(red: 216/255, green: 216/255, blue: 216/255, alpha: 100)
        buttonAudio.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changeSelect))
        buttonAudio.addGestureRecognizer(gesture)
        // Initialization code
    
    }
    @objc func changeSelect(){
        // B2: gọi closure
        // ? để nếu không có chỗ nào đăng kí closure này thì thôi không gọi đến closure
        playSound()
        // ?? neu food.name nil thi lay gia tri mac dinh

    }

    func setupLayout(){
        
        self.addSubview(containView)
        containView.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        containView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5).isActive = true
        containView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        containView.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        
        containView.addSubview(imageCheck)
        imageCheck.topAnchor.constraint(equalTo: containView.topAnchor, constant: 10).isActive = true
        imageCheck.bottomAnchor.constraint(equalTo: containView.bottomAnchor, constant: -10).isActive = true
        imageCheck.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        imageCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        containView.addSubview(buttonAudio)
        buttonAudio.topAnchor.constraint(equalTo: containView.topAnchor, constant: 10).isActive = true
        buttonAudio.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        buttonAudio.widthAnchor.constraint(equalToConstant: 20).isActive = true
        buttonAudio.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    
        containView.addSubview(stackView1)
        stackView1.topAnchor.constraint(equalTo: containView.topAnchor, constant: 5).isActive = true
        stackView1.bottomAnchor.constraint(equalTo: containView.bottomAnchor, constant: -2).isActive = true
        stackView1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 80).isActive = true
        stackView1.rightAnchor.constraint(equalTo: buttonAudio.leftAnchor, constant: -5).isActive = true
//
        stackView1.addArrangedSubview(stackView2)
        stackView2.addArrangedSubview(label1)
        stackView2.addArrangedSubview(label11)
        stackView1.addArrangedSubview(label2)
        stackView1.addArrangedSubview(label3)
    }
    
    func playSound(){
        let path = Bundle.main.path(forResource: test, ofType:nil)!
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
}
