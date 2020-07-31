//
//  themeMain.swift
//  languageApp
//
//  Created by Huy on 7/9/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ThemeMain: UIViewController {
    var colectionTheme: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let colectionTheme = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        colectionTheme.translatesAutoresizingMaskIntoConstraints = false
        colectionTheme.backgroundColor = UIColor.colorBackground()
        colectionTheme.showsVerticalScrollIndicator = false
        colectionTheme.register(ThemeColectionView.self, forCellWithReuseIdentifier: "cell")
        return colectionTheme
    }()
    var datas : [Theme] = []
    override func viewDidLoad() {
        datas = fakeDatas()
        super.viewDidLoad()
        setupNavi()
        setupLayput()
    }
    func setupNavi(){
        view.backgroundColor = UIColor.colorBackground()
        title = "Chủ đề"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.colorNavigation()
        // an nut back
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

    }
    
    func setupLayput(){
        view.addSubview(colectionTheme)
        colectionTheme.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        colectionTheme.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34).isActive = true
        colectionTheme.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        colectionTheme.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8).isActive = true
        colectionTheme.delegate = self
        colectionTheme.dataSource = self
    }
    deinit {
        print("out side")
    }
}
extension ThemeMain: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ThemeColectionView

        
        cell.contentView.backgroundColor = .clear
        cell.labelLangage.text = datas[indexPath.row].title

        cell.imageTheme.image = UIImage(named: datas[indexPath.row].ImageTheme)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = ((collectionView.frame.size.width - 20) / 2)
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailTheme = DetailTheme()
    
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        self.navigationItem.backBarButtonItem?.tintColor = .white
        navigationController?.pushViewController(detailTheme, animated: true)
        
        title = datas[indexPath.row].title
        
        
        detailTheme.dataDetailTheme = datas[indexPath.row]
    }
    
    
}
