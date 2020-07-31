//
//  DBMangager.swift
//  languageApp
//
//  Created by Huy on 7/26/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import RealmSwift

class DBManger {
    private var database : Realm!
    static let shareInstance = DBManger()
   
    private init(){
        // khoi tao realm
        database = try! Realm()
        // hien thi duong dan
        print(database.configuration.fileURL!)
    }
    func addData(_ dayRemind: DayRemind){
        try! database.write {
            database.add(dayRemind)
        }
    }
    func getAllData() -> Results<DayRemind>? {
        let results = database.objects(DayRemind.self)
        return results
    }
//    func getclickClosure() -> Results<DayRemind>? {
//        let results = database.objects(DayRemind.clickClosure)
//        return results
//    }
    
    func deleteItem(_ item: DayRemind){
        do {
            try database.write{
                database.delete(item)
            }
        }catch {
            print(error)
        }
    }
    func deletaAll(){
        try! database.write {
            database.deleteAll()
        }
    }
//    func updateData(_ dataUpdate: DayRemind) {
//        let updateData = DayRemind()
//        updateData.IDRemind = dataUpdate.IDRemind
//        updateData.isCheck = dataUpdate.isCheck
//        updateData.time1 = dataUpdate.time1
//        updateData.text1 = dataUpdate.text1
//        
//        do {
//            try database.write {
//                database.add(updateData)
//            }
//        } catch {
//            print("Error Updating Photos: \(error.localizedDescription)")
//        }
//    }
    func updatePersonByID( id : String , object : DayRemind){
        object.IDRemind = id
        try! database.write {
            database.add(object, update: .modified)
        }
    }


}
