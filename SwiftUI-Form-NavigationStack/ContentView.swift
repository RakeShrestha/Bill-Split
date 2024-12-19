//
//  ContentView.swift
//  SwiftUI-Form-NavigationStack
//
//  Created by Rakesh Shrestha on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Ron", "Harry", "Hermione"]
    @State private var selectedStudent = "Harry"
    @State private var tapCount = 0
    @State private var name = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Learning")
            .navigationBarTitleDisplayMode(.inline)
        }
        VStack {
            Button("Tap Count: \(tapCount)") {
                self.tapCount += 1
            }
            Form {
                TextField("Enter your name", text: $name)
                ForEach(0..<5) {
                    Text("Using dollar \($0)")
                }
                if name != "" {
                    Text("Your name is \(name)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
