//
//  Friend.swift
//  Birthdays
//
//  Created by Riya Shankaran on 7/25/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name = ""
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
}
