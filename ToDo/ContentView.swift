//
//  ContentView.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 14/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Hello  Code")
                Text ("Hello world")
            }
            HStack {
                Text("Hello  Code")
                Text ("Hello world")
            }
            HStack {
                Text("Hello  Code")
                Text ("Hello world")
            }
            Button("Test Button")
            {
                print("Test button pressed")
            }
            .foregroundColor(.white)
            .padding()
            .font(.title)
            .background(.blue)
            .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
