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
                Spacer()
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
