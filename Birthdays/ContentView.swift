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
    @State private var newName = ""
    @State private var newBirthday = Date.now
    
    func deleteFriend(at offsets: IndexSet) {
        friends.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(friends) { friend in
                    HStack {
                        HStack {
                            Text(friend.name)
                            Spacer()
                            Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                        }
                    }
                }
                .onDelete(perform: deleteFriend)
            }
            .navigationTitle(Text("Birthdays"))
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection:$newBirthday, in: Date.distantPast...Date.now, displayedComponents: .date) {
                        TextField("Name", text:$newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newBirthday)
                        friends.append(newFriend)
                        newName = ""
                        newBirthday = Date.now
                    }.bold()
                }
                .padding()
                .background(.bar)
            }
        }
        
    }
    
    
    
}

#Preview {
    ContentView()
}
