//
//  ModuleRealm.swift
//  languageApp
//
//  Created by Huy on 7/25/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import RealmSwift

class DayRemind: Object{
//    @objc dynamic var IDRemind = UUID().uuidString
    @objc dynamic var isCheck: Bool = true
    @objc dynamic var time1: String? = nil
    @objc dynamic var text1: String? = nil
    @objc dynamic var check: String? = nil
    
//    override static func primaryKey() -> String? {
//        return "IDRemind"
//    }
}
