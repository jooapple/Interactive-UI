//
//  ContentView.swift
//  Interactive UI
//
//  Created by Scholar on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var presentAlert = false
    @State private var pass = ""
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    var body: some View {
        VStack{
            Text("Totally not sketch login")
                .font(.title)
            TextField("Username", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 2)
                .padding()
            TextField("Password",text:$pass)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 2)
                .padding()
            DatePicker(selection: Text("Date of Birth"), displayedComponents:[.date])
            Button("Submit"){
                textTitle = "Welcome, \(name)!"
                presentAlert = true
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Are you sure you trust this?", isPresented: $presentAlert, actions:{})
        }
    }
}

#Preview {
    ContentView()
}
