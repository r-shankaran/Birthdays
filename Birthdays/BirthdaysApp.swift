//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Riya Shankaran on 7/25/25.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
    
    
}
