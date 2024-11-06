//
//  Group.swift
//  RealmSync-SwiftUI
//
//  Created by Kritchanat on 6/11/2567 BE.
//

import Foundation
import RealmSwift

final class Group: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var items = RealmSwift.List<Item>()

}

