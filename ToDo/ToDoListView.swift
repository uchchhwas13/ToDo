//
//  ToDoListView.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 14/3/23.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach([ToDoItem(title: "Walk the dog", important: false), ToDoItem(title: "Buy cheese", important: true)]) { todo in
                    if todo.important {
                        Text(todo.title).bold().foregroundColor(.white)
                            .background(Rectangle())
                            .foregroundColor(.red)
                            .cornerRadius(5)
                    }
                    else {
                        Text(todo.title)
                    }
                }
            }.navigationTitle("To Dos").navigationBarItems(trailing: NavigationLink(destination: CreateToDoView()) {
                Text("Add")
            })
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
