//
//  CreateToDoView.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 15/3/23.
//

import SwiftUI

struct CreateToDoView: View {
    @State var toDoTitle = ""
    @State var important = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        List {
            Section {
                TextField("Add to do items", text:$toDoTitle)
            }
            Section {
                Toggle(isOn: $important)
                {
                    Text("Important")
                }
            }
            Section {
                HStack {
                    Spacer()
                    Button("Save") {
                        self.presentationMode.wrappedValue.dismiss()
                    }.disabled(toDoTitle.isEmpty)
                    Spacer()
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct CreateToDoView_Previews: PreviewProvider {
    static var previews: some View {
        CreateToDoView()
    }
}
