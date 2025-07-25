//
//  ContentView.swift
//  Birthdays
//
//  Created by Riya Shankaran on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend(name: "Riya", birthday: .now),
        Friend(name: "Bob", birthday: .now)
    ]
    
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle(Text("Birthdays"))
        }
        
    }
}

#Preview {
    ContentView()
}
