//
//  ToDoListView.swift
//  ToDo
//
//  Created by Uchchhwas Roy on 14/3/23.
//

import SwiftUI

struct ToDoListView: View {

    @EnvironmentObject var toDoStorage: ToDoStorage
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.toDoStorage.toDos) { todo in
                    if todo.important {
                        Text(todo.title).bold().foregroundColor(.white)
                            .background(Rectangle())
                            .foregroundColor(.red)
                            .cornerRadius(5)
                    }
                    else {
                        Text(todo.title)
                    }
                }.onDelete(perform: { indexSet in
                    if let index = indexSet.first {
                        self.toDoStorage.toDos.remove(at: index)
                    }
                })
            }.navigationTitle("To Dos").navigationBarItems(trailing: NavigationLink(destination: CreateToDoView()) {
                Text("Add")
            })
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView().environmentObject(ToDoStorage())
    }
}
